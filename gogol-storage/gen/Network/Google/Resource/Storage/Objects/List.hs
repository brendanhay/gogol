{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.Objects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of objects matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsList@.
module Storage.Objects.List
    (
    -- * REST Resource
      ObjectsListAPI

    -- * Creating a Request
    , objectsList
    , ObjectsList

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olPrefix
    , olUserIp
    , olBucket
    , olVersions
    , olKey
    , olProjection
    , olPageToken
    , olOauthToken
    , olDelimiter
    , olMaxResults
    , olFields
    , olAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsList@ which the
-- 'ObjectsList' request conforms to.
type ObjectsListAPI =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           QueryParam "prefix" Text :>
             QueryParam "versions" Bool :>
               QueryParam "projection" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "delimiter" Text :>
                     QueryParam "maxResults" Word32 :> Get '[JSON] Objects

-- | Retrieves a list of objects matching the criteria.
--
-- /See:/ 'objectsList' smart constructor.
data ObjectsList = ObjectsList
    { _olQuotaUser   :: !(Maybe Text)
    , _olPrettyPrint :: !Bool
    , _olPrefix      :: !(Maybe Text)
    , _olUserIp      :: !(Maybe Text)
    , _olBucket      :: !Text
    , _olVersions    :: !(Maybe Bool)
    , _olKey         :: !(Maybe Text)
    , _olProjection  :: !(Maybe Text)
    , _olPageToken   :: !(Maybe Text)
    , _olOauthToken  :: !(Maybe Text)
    , _olDelimiter   :: !(Maybe Text)
    , _olMaxResults  :: !(Maybe Word32)
    , _olFields      :: !(Maybe Text)
    , _olAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olPrefix'
--
-- * 'olUserIp'
--
-- * 'olBucket'
--
-- * 'olVersions'
--
-- * 'olKey'
--
-- * 'olProjection'
--
-- * 'olPageToken'
--
-- * 'olOauthToken'
--
-- * 'olDelimiter'
--
-- * 'olMaxResults'
--
-- * 'olFields'
--
-- * 'olAlt'
objectsList
    :: Text -- ^ 'bucket'
    -> ObjectsList
objectsList pOlBucket_ =
    ObjectsList
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olPrefix = Nothing
    , _olUserIp = Nothing
    , _olBucket = pOlBucket_
    , _olVersions = Nothing
    , _olKey = Nothing
    , _olProjection = Nothing
    , _olPageToken = Nothing
    , _olOauthToken = Nothing
    , _olDelimiter = Nothing
    , _olMaxResults = Nothing
    , _olFields = Nothing
    , _olAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' ObjectsList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' ObjectsList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | Filter results to objects whose names begin with this prefix.
olPrefix :: Lens' ObjectsList' (Maybe Text)
olPrefix = lens _olPrefix (\ s a -> s{_olPrefix = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIp :: Lens' ObjectsList' (Maybe Text)
olUserIp = lens _olUserIp (\ s a -> s{_olUserIp = a})

-- | Name of the bucket in which to look for objects.
olBucket :: Lens' ObjectsList' Text
olBucket = lens _olBucket (\ s a -> s{_olBucket = a})

-- | If true, lists all versions of a file as distinct results.
olVersions :: Lens' ObjectsList' (Maybe Bool)
olVersions
  = lens _olVersions (\ s a -> s{_olVersions = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' ObjectsList' (Maybe Text)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Set of properties to return. Defaults to noAcl.
olProjection :: Lens' ObjectsList' (Maybe Text)
olProjection
  = lens _olProjection (\ s a -> s{_olProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
olPageToken :: Lens' ObjectsList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOauthToken :: Lens' ObjectsList' (Maybe Text)
olOauthToken
  = lens _olOauthToken (\ s a -> s{_olOauthToken = a})

-- | Returns results in a directory-like mode. items will contain only
-- objects whose names, aside from the prefix, do not contain delimiter.
-- Objects whose names, aside from the prefix, contain delimiter will have
-- their name, truncated after the delimiter, returned in prefixes.
-- Duplicate prefixes are omitted.
olDelimiter :: Lens' ObjectsList' (Maybe Text)
olDelimiter
  = lens _olDelimiter (\ s a -> s{_olDelimiter = a})

-- | Maximum number of items plus prefixes to return. As duplicate prefixes
-- are omitted, fewer total results may be returned than requested.
olMaxResults :: Lens' ObjectsList' (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' ObjectsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | Data format for the response.
olAlt :: Lens' ObjectsList' Text
olAlt = lens _olAlt (\ s a -> s{_olAlt = a})

instance GoogleRequest ObjectsList' where
        type Rs ObjectsList' = Objects
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsList{..}
          = go _olQuotaUser _olPrettyPrint _olPrefix _olUserIp
              _olBucket
              _olVersions
              _olKey
              _olProjection
              _olPageToken
              _olOauthToken
              _olDelimiter
              _olMaxResults
              _olFields
              _olAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ObjectsListAPI) r u
