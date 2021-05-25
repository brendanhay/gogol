{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.SnapshotsExtended.ResolveSnapshotHead
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resolves any potential conflicts according to the resolution policy
-- specified in the request and returns the snapshot head after the
-- resolution.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.snapshotsExtended.resolveSnapshotHead@.
module Network.Google.Resource.Games.SnapshotsExtended.ResolveSnapshotHead
    (
    -- * REST Resource
      SnapshotsExtendedResolveSnapshotHeadResource

    -- * Creating a Request
    , snapshotsExtendedResolveSnapshotHead
    , SnapshotsExtendedResolveSnapshotHead

    -- * Request Lenses
    , sershXgafv
    , sershUploadProtocol
    , sershAccessToken
    , sershUploadType
    , sershPayload
    , sershSnapshotName
    , sershCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.snapshotsExtended.resolveSnapshotHead@ method which the
-- 'SnapshotsExtendedResolveSnapshotHead' request conforms to.
type SnapshotsExtendedResolveSnapshotHeadResource =
     "games" :>
       "v1" :>
         "snapshotsExtended" :>
           CaptureMode "snapshotName" "resolveHead" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ResolveSnapshotHeadRequest :>
                           Post '[JSON] ResolveSnapshotHeadResponse

-- | Resolves any potential conflicts according to the resolution policy
-- specified in the request and returns the snapshot head after the
-- resolution.
--
-- /See:/ 'snapshotsExtendedResolveSnapshotHead' smart constructor.
data SnapshotsExtendedResolveSnapshotHead =
  SnapshotsExtendedResolveSnapshotHead'
    { _sershXgafv :: !(Maybe Xgafv)
    , _sershUploadProtocol :: !(Maybe Text)
    , _sershAccessToken :: !(Maybe Text)
    , _sershUploadType :: !(Maybe Text)
    , _sershPayload :: !ResolveSnapshotHeadRequest
    , _sershSnapshotName :: !Text
    , _sershCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotsExtendedResolveSnapshotHead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sershXgafv'
--
-- * 'sershUploadProtocol'
--
-- * 'sershAccessToken'
--
-- * 'sershUploadType'
--
-- * 'sershPayload'
--
-- * 'sershSnapshotName'
--
-- * 'sershCallback'
snapshotsExtendedResolveSnapshotHead
    :: ResolveSnapshotHeadRequest -- ^ 'sershPayload'
    -> Text -- ^ 'sershSnapshotName'
    -> SnapshotsExtendedResolveSnapshotHead
snapshotsExtendedResolveSnapshotHead pSershPayload_ pSershSnapshotName_ =
  SnapshotsExtendedResolveSnapshotHead'
    { _sershXgafv = Nothing
    , _sershUploadProtocol = Nothing
    , _sershAccessToken = Nothing
    , _sershUploadType = Nothing
    , _sershPayload = pSershPayload_
    , _sershSnapshotName = pSershSnapshotName_
    , _sershCallback = Nothing
    }


-- | V1 error format.
sershXgafv :: Lens' SnapshotsExtendedResolveSnapshotHead (Maybe Xgafv)
sershXgafv
  = lens _sershXgafv (\ s a -> s{_sershXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sershUploadProtocol :: Lens' SnapshotsExtendedResolveSnapshotHead (Maybe Text)
sershUploadProtocol
  = lens _sershUploadProtocol
      (\ s a -> s{_sershUploadProtocol = a})

-- | OAuth access token.
sershAccessToken :: Lens' SnapshotsExtendedResolveSnapshotHead (Maybe Text)
sershAccessToken
  = lens _sershAccessToken
      (\ s a -> s{_sershAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sershUploadType :: Lens' SnapshotsExtendedResolveSnapshotHead (Maybe Text)
sershUploadType
  = lens _sershUploadType
      (\ s a -> s{_sershUploadType = a})

-- | Multipart request metadata.
sershPayload :: Lens' SnapshotsExtendedResolveSnapshotHead ResolveSnapshotHeadRequest
sershPayload
  = lens _sershPayload (\ s a -> s{_sershPayload = a})

-- | Required. Name of the snapshot.
sershSnapshotName :: Lens' SnapshotsExtendedResolveSnapshotHead Text
sershSnapshotName
  = lens _sershSnapshotName
      (\ s a -> s{_sershSnapshotName = a})

-- | JSONP
sershCallback :: Lens' SnapshotsExtendedResolveSnapshotHead (Maybe Text)
sershCallback
  = lens _sershCallback
      (\ s a -> s{_sershCallback = a})

instance GoogleRequest
           SnapshotsExtendedResolveSnapshotHead
         where
        type Rs SnapshotsExtendedResolveSnapshotHead =
             ResolveSnapshotHeadResponse
        type Scopes SnapshotsExtendedResolveSnapshotHead =
             '["https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/games"]
        requestClient
          SnapshotsExtendedResolveSnapshotHead'{..}
          = go _sershSnapshotName _sershXgafv
              _sershUploadProtocol
              _sershAccessToken
              _sershUploadType
              _sershCallback
              (Just AltJSON)
              _sershPayload
              gamesService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SnapshotsExtendedResolveSnapshotHeadResource)
                      mempty
