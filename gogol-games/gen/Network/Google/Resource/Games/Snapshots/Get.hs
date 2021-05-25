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
-- Module      : Network.Google.Resource.Games.Snapshots.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata for a given snapshot ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.snapshots.get@.
module Network.Google.Resource.Games.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetResource

    -- * Creating a Request
    , snapshotsGet
    , SnapshotsGet

    -- * Request Lenses
    , snaXgafv
    , snaUploadProtocol
    , snaAccessToken
    , snaUploadType
    , snaLanguage
    , snaCallback
    , snaSnapshotId
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.snapshots.get@ method which the
-- 'SnapshotsGet' request conforms to.
type SnapshotsGetResource =
     "games" :>
       "v1" :>
         "snapshots" :>
           Capture "snapshotId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "language" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ 'snapshotsGet' smart constructor.
data SnapshotsGet =
  SnapshotsGet'
    { _snaXgafv :: !(Maybe Xgafv)
    , _snaUploadProtocol :: !(Maybe Text)
    , _snaAccessToken :: !(Maybe Text)
    , _snaUploadType :: !(Maybe Text)
    , _snaLanguage :: !(Maybe Text)
    , _snaCallback :: !(Maybe Text)
    , _snaSnapshotId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaXgafv'
--
-- * 'snaUploadProtocol'
--
-- * 'snaAccessToken'
--
-- * 'snaUploadType'
--
-- * 'snaLanguage'
--
-- * 'snaCallback'
--
-- * 'snaSnapshotId'
snapshotsGet
    :: Text -- ^ 'snaSnapshotId'
    -> SnapshotsGet
snapshotsGet pSnaSnapshotId_ =
  SnapshotsGet'
    { _snaXgafv = Nothing
    , _snaUploadProtocol = Nothing
    , _snaAccessToken = Nothing
    , _snaUploadType = Nothing
    , _snaLanguage = Nothing
    , _snaCallback = Nothing
    , _snaSnapshotId = pSnaSnapshotId_
    }


-- | V1 error format.
snaXgafv :: Lens' SnapshotsGet (Maybe Xgafv)
snaXgafv = lens _snaXgafv (\ s a -> s{_snaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
snaUploadProtocol :: Lens' SnapshotsGet (Maybe Text)
snaUploadProtocol
  = lens _snaUploadProtocol
      (\ s a -> s{_snaUploadProtocol = a})

-- | OAuth access token.
snaAccessToken :: Lens' SnapshotsGet (Maybe Text)
snaAccessToken
  = lens _snaAccessToken
      (\ s a -> s{_snaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
snaUploadType :: Lens' SnapshotsGet (Maybe Text)
snaUploadType
  = lens _snaUploadType
      (\ s a -> s{_snaUploadType = a})

-- | The preferred language to use for strings returned by this method.
snaLanguage :: Lens' SnapshotsGet (Maybe Text)
snaLanguage
  = lens _snaLanguage (\ s a -> s{_snaLanguage = a})

-- | JSONP
snaCallback :: Lens' SnapshotsGet (Maybe Text)
snaCallback
  = lens _snaCallback (\ s a -> s{_snaCallback = a})

-- | The ID of the snapshot.
snaSnapshotId :: Lens' SnapshotsGet Text
snaSnapshotId
  = lens _snaSnapshotId
      (\ s a -> s{_snaSnapshotId = a})

instance GoogleRequest SnapshotsGet where
        type Rs SnapshotsGet = Snapshot
        type Scopes SnapshotsGet =
             '["https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/games"]
        requestClient SnapshotsGet'{..}
          = go _snaSnapshotId _snaXgafv _snaUploadProtocol
              _snaAccessToken
              _snaUploadType
              _snaLanguage
              _snaCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsGetResource)
                      mempty
