module Kuy.Discovery.Directory where

import Data.HashPSQ (HashPSQ)
import Data.HashPSQ qualified as HashPSQ
import Data.Map.Strict qualified as Map
import Kuy.Discovery.Label
import Kuy.Discovery.Name
import Kuy.Prelude

-- | The list of all APIs supported by the Google APIs Discovery Service.
--
-- The data for each entry is a subset of the Discovery Document for
-- that API, and the list provides a directory of supported APIs. If a
-- specific API has multiple versions, each of the versions has its own
-- entry in the list.
--
-- See <https://developers.google.com/discovery/v1/reference/apis/list Discovery Document: list>.
--
-- Example @gen\/examples/directory-list.json@.
data DirectoryList = DirectoryList
  { -- | The fixed string discovery#directoryList
    kind :: Literal "discovery#directoryList",
    -- | Indicate the version of the Discovery API used to generate this doc.
    discoveryVersion :: Literal "v1",
    -- | The individual directory entries. One entry per API/version pair.
    items :: [DirectoryItem]
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData, Hashable, Binary, FromJSON)

-- | An overview of the specific API version\'s discovery metadata.
data DirectoryItem = DirectoryItem
  { -- | The kind for this response.
    kind :: Literal "discovery#directoryItem",
    -- | The ID of this API.
    id :: ServiceId,
    -- | The name of the API.
    name :: ServiceName,
    -- | The version of the API.
    version :: ServiceVersion,
    -- | The title of this API.
    title :: Text,
    -- | The description of this API.
    description :: Text,
    -- | The url for the discovery REST document.
    discoveryRestUrl :: String,
    -- | A link to human readable documentation for the API.
    documentationLink :: Maybe Text,
    -- | Labels for the status of this API, such as limited_availability or deprecated.
    labels :: Maybe (Set Label),
    -- | true if this version is the preferred version to use.
    preferred :: Bool
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData, Hashable, Binary, FromJSON)

data Preferred = Preferred
  { preferred :: Down Bool,
    version :: ServiceVersion
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData, Hashable, Binary)

type DirectoryIndex = Map ServiceName (HashPSQ ServiceVersion Preferred DirectoryItem)

newDirectoryIndex :: [DirectoryItem] -> DirectoryIndex
newDirectoryIndex =
  foldr (\item m -> Map.alter (update item) item.name m) Map.empty
  where
    update item =
      Just . \case
        Nothing -> HashPSQ.singleton item.version priority item
        Just pq -> HashPSQ.insert item.version priority item pq
      where
        priority =
          Preferred
            { preferred = Down item.preferred,
              version = item.version
            }

preferredVersions :: DirectoryIndex -> [DirectoryItem]
preferredVersions index =
  flip mapMaybe (Map.elems index) $ \versions -> do
    (_v, _p, item) <- HashPSQ.findMin versions
    pure item

findPreferredVersion ::
  ServiceName ->
  Maybe ServiceVersion ->
  DirectoryIndex ->
  Maybe DirectoryItem
findPreferredVersion name mversion index = do
  versions <- Map.lookup name index

  case mversion of
    Nothing -> (\(_v, _p, item) -> item) <$> HashPSQ.findMin versions
    Just pv -> (\(_p, item) -> item) <$> HashPSQ.lookup pv versions
