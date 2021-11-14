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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all current APKs of the app and edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.list@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.List
    (
    -- * REST Resource
      EditsAPKsListResource

    -- * Creating a Request
    , editsAPKsList
    , EditsAPKsList

    -- * Request Lenses
    , eapklXgafv
    , eapklUploadProtocol
    , eapklPackageName
    , eapklAccessToken
    , eapklUploadType
    , eapklEditId
    , eapklCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apks.list@ method which the
-- 'EditsAPKsList' request conforms to.
type EditsAPKsListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] APKsListResponse

-- | Lists all current APKs of the app and edit.
--
-- /See:/ 'editsAPKsList' smart constructor.
data EditsAPKsList =
  EditsAPKsList'
    { _eapklXgafv :: !(Maybe Xgafv)
    , _eapklUploadProtocol :: !(Maybe Text)
    , _eapklPackageName :: !Text
    , _eapklAccessToken :: !(Maybe Text)
    , _eapklUploadType :: !(Maybe Text)
    , _eapklEditId :: !Text
    , _eapklCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsAPKsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapklXgafv'
--
-- * 'eapklUploadProtocol'
--
-- * 'eapklPackageName'
--
-- * 'eapklAccessToken'
--
-- * 'eapklUploadType'
--
-- * 'eapklEditId'
--
-- * 'eapklCallback'
editsAPKsList
    :: Text -- ^ 'eapklPackageName'
    -> Text -- ^ 'eapklEditId'
    -> EditsAPKsList
editsAPKsList pEapklPackageName_ pEapklEditId_ =
  EditsAPKsList'
    { _eapklXgafv = Nothing
    , _eapklUploadProtocol = Nothing
    , _eapklPackageName = pEapklPackageName_
    , _eapklAccessToken = Nothing
    , _eapklUploadType = Nothing
    , _eapklEditId = pEapklEditId_
    , _eapklCallback = Nothing
    }


-- | V1 error format.
eapklXgafv :: Lens' EditsAPKsList (Maybe Xgafv)
eapklXgafv
  = lens _eapklXgafv (\ s a -> s{_eapklXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eapklUploadProtocol :: Lens' EditsAPKsList (Maybe Text)
eapklUploadProtocol
  = lens _eapklUploadProtocol
      (\ s a -> s{_eapklUploadProtocol = a})

-- | Package name of the app.
eapklPackageName :: Lens' EditsAPKsList Text
eapklPackageName
  = lens _eapklPackageName
      (\ s a -> s{_eapklPackageName = a})

-- | OAuth access token.
eapklAccessToken :: Lens' EditsAPKsList (Maybe Text)
eapklAccessToken
  = lens _eapklAccessToken
      (\ s a -> s{_eapklAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eapklUploadType :: Lens' EditsAPKsList (Maybe Text)
eapklUploadType
  = lens _eapklUploadType
      (\ s a -> s{_eapklUploadType = a})

-- | Identifier of the edit.
eapklEditId :: Lens' EditsAPKsList Text
eapklEditId
  = lens _eapklEditId (\ s a -> s{_eapklEditId = a})

-- | JSONP
eapklCallback :: Lens' EditsAPKsList (Maybe Text)
eapklCallback
  = lens _eapklCallback
      (\ s a -> s{_eapklCallback = a})

instance GoogleRequest EditsAPKsList where
        type Rs EditsAPKsList = APKsListResponse
        type Scopes EditsAPKsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsAPKsList'{..}
          = go _eapklPackageName _eapklEditId _eapklXgafv
              _eapklUploadProtocol
              _eapklAccessToken
              _eapklUploadType
              _eapklCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsAPKsListResource)
                      mempty
