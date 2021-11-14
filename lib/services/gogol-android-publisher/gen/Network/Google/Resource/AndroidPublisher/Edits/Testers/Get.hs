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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets testers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.testers.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
    (
    -- * REST Resource
      EditsTestersGetResource

    -- * Creating a Request
    , editsTestersGet
    , EditsTestersGet

    -- * Request Lenses
    , etgXgafv
    , etgTrack
    , etgUploadProtocol
    , etgPackageName
    , etgAccessToken
    , etgUploadType
    , etgEditId
    , etgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.testers.get@ method which the
-- 'EditsTestersGet' request conforms to.
type EditsTestersGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Testers

-- | Gets testers.
--
-- /See:/ 'editsTestersGet' smart constructor.
data EditsTestersGet =
  EditsTestersGet'
    { _etgXgafv :: !(Maybe Xgafv)
    , _etgTrack :: !Text
    , _etgUploadProtocol :: !(Maybe Text)
    , _etgPackageName :: !Text
    , _etgAccessToken :: !(Maybe Text)
    , _etgUploadType :: !(Maybe Text)
    , _etgEditId :: !Text
    , _etgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTestersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgXgafv'
--
-- * 'etgTrack'
--
-- * 'etgUploadProtocol'
--
-- * 'etgPackageName'
--
-- * 'etgAccessToken'
--
-- * 'etgUploadType'
--
-- * 'etgEditId'
--
-- * 'etgCallback'
editsTestersGet
    :: Text -- ^ 'etgTrack'
    -> Text -- ^ 'etgPackageName'
    -> Text -- ^ 'etgEditId'
    -> EditsTestersGet
editsTestersGet pEtgTrack_ pEtgPackageName_ pEtgEditId_ =
  EditsTestersGet'
    { _etgXgafv = Nothing
    , _etgTrack = pEtgTrack_
    , _etgUploadProtocol = Nothing
    , _etgPackageName = pEtgPackageName_
    , _etgAccessToken = Nothing
    , _etgUploadType = Nothing
    , _etgEditId = pEtgEditId_
    , _etgCallback = Nothing
    }


-- | V1 error format.
etgXgafv :: Lens' EditsTestersGet (Maybe Xgafv)
etgXgafv = lens _etgXgafv (\ s a -> s{_etgXgafv = a})

-- | The track to read from.
etgTrack :: Lens' EditsTestersGet Text
etgTrack = lens _etgTrack (\ s a -> s{_etgTrack = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etgUploadProtocol :: Lens' EditsTestersGet (Maybe Text)
etgUploadProtocol
  = lens _etgUploadProtocol
      (\ s a -> s{_etgUploadProtocol = a})

-- | Package name of the app.
etgPackageName :: Lens' EditsTestersGet Text
etgPackageName
  = lens _etgPackageName
      (\ s a -> s{_etgPackageName = a})

-- | OAuth access token.
etgAccessToken :: Lens' EditsTestersGet (Maybe Text)
etgAccessToken
  = lens _etgAccessToken
      (\ s a -> s{_etgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etgUploadType :: Lens' EditsTestersGet (Maybe Text)
etgUploadType
  = lens _etgUploadType
      (\ s a -> s{_etgUploadType = a})

-- | Identifier of the edit.
etgEditId :: Lens' EditsTestersGet Text
etgEditId
  = lens _etgEditId (\ s a -> s{_etgEditId = a})

-- | JSONP
etgCallback :: Lens' EditsTestersGet (Maybe Text)
etgCallback
  = lens _etgCallback (\ s a -> s{_etgCallback = a})

instance GoogleRequest EditsTestersGet where
        type Rs EditsTestersGet = Testers
        type Scopes EditsTestersGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTestersGet'{..}
          = go _etgPackageName _etgEditId _etgTrack _etgXgafv
              _etgUploadProtocol
              _etgAccessToken
              _etgUploadType
              _etgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersGetResource)
                      mempty
