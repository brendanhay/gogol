{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PhotosLibrary.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PhotosLibrary.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Processing status of the video.
data VideoStatus
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Video processing status is unknown.
    | Processing
      -- ^ @PROCESSING@
      -- Video is currently being processed. The user will see an icon for this
      -- video in the Google Photos app, however, it will not be playable yet.
    | Ready
      -- ^ @READY@
      -- Video is now ready for viewing.
    | Failed
      -- ^ @FAILED@
      -- Something has gone wrong and the video has failed to process.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatus

instance FromHttpApiData VideoStatus where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "PROCESSING" -> Right Processing
        "READY" -> Right Ready
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse VideoStatus from: " <> x)

instance ToHttpApiData VideoStatus where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Processing -> "PROCESSING"
        Ready -> "READY"
        Failed -> "FAILED"

instance FromJSON VideoStatus where
    parseJSON = parseJSONText "VideoStatus"

instance ToJSON VideoStatus where
    toJSON = toJSONText

-- | Type of position, for a media or enrichment item.
data AlbumPositionPosition
    = PositionTypeUnspecified
      -- ^ @POSITION_TYPE_UNSPECIFIED@
      -- Default value if this enum is not set.
    | FirstInAlbum
      -- ^ @FIRST_IN_ALBUM@
      -- At the beginning of the album.
    | LastInAlbum
      -- ^ @LAST_IN_ALBUM@
      -- At the end of the album.
    | AfterMediaItem
      -- ^ @AFTER_MEDIA_ITEM@
      -- After a media item.
    | AfterEnrichmentItem
      -- ^ @AFTER_ENRICHMENT_ITEM@
      -- After an enrichment item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AlbumPositionPosition

instance FromHttpApiData AlbumPositionPosition where
    parseQueryParam = \case
        "POSITION_TYPE_UNSPECIFIED" -> Right PositionTypeUnspecified
        "FIRST_IN_ALBUM" -> Right FirstInAlbum
        "LAST_IN_ALBUM" -> Right LastInAlbum
        "AFTER_MEDIA_ITEM" -> Right AfterMediaItem
        "AFTER_ENRICHMENT_ITEM" -> Right AfterEnrichmentItem
        x -> Left ("Unable to parse AlbumPositionPosition from: " <> x)

instance ToHttpApiData AlbumPositionPosition where
    toQueryParam = \case
        PositionTypeUnspecified -> "POSITION_TYPE_UNSPECIFIED"
        FirstInAlbum -> "FIRST_IN_ALBUM"
        LastInAlbum -> "LAST_IN_ALBUM"
        AfterMediaItem -> "AFTER_MEDIA_ITEM"
        AfterEnrichmentItem -> "AFTER_ENRICHMENT_ITEM"

instance FromJSON AlbumPositionPosition where
    parseJSON = parseJSONText "AlbumPositionPosition"

instance ToJSON AlbumPositionPosition where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
