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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Validate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates an app edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.validate@.
module Network.Google.Resource.AndroidPublisher.Edits.Validate
    (
    -- * REST Resource
      EditsValidateResource

    -- * Creating a Request
    , editsValidate
    , EditsValidate

    -- * Request Lenses
    , evXgafv
    , evUploadProtocol
    , evPackageName
    , evAccessToken
    , evUploadType
    , evEditId
    , evCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.validate@ method which the
-- 'EditsValidate' request conforms to.
type EditsValidateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               CaptureMode "editId" "validate" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] AppEdit

-- | Validates an app edit.
--
-- /See:/ 'editsValidate' smart constructor.
data EditsValidate =
  EditsValidate'
    { _evXgafv :: !(Maybe Xgafv)
    , _evUploadProtocol :: !(Maybe Text)
    , _evPackageName :: !Text
    , _evAccessToken :: !(Maybe Text)
    , _evUploadType :: !(Maybe Text)
    , _evEditId :: !Text
    , _evCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evXgafv'
--
-- * 'evUploadProtocol'
--
-- * 'evPackageName'
--
-- * 'evAccessToken'
--
-- * 'evUploadType'
--
-- * 'evEditId'
--
-- * 'evCallback'
editsValidate
    :: Text -- ^ 'evPackageName'
    -> Text -- ^ 'evEditId'
    -> EditsValidate
editsValidate pEvPackageName_ pEvEditId_ =
  EditsValidate'
    { _evXgafv = Nothing
    , _evUploadProtocol = Nothing
    , _evPackageName = pEvPackageName_
    , _evAccessToken = Nothing
    , _evUploadType = Nothing
    , _evEditId = pEvEditId_
    , _evCallback = Nothing
    }


-- | V1 error format.
evXgafv :: Lens' EditsValidate (Maybe Xgafv)
evXgafv = lens _evXgafv (\ s a -> s{_evXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
evUploadProtocol :: Lens' EditsValidate (Maybe Text)
evUploadProtocol
  = lens _evUploadProtocol
      (\ s a -> s{_evUploadProtocol = a})

-- | Package name of the app.
evPackageName :: Lens' EditsValidate Text
evPackageName
  = lens _evPackageName
      (\ s a -> s{_evPackageName = a})

-- | OAuth access token.
evAccessToken :: Lens' EditsValidate (Maybe Text)
evAccessToken
  = lens _evAccessToken
      (\ s a -> s{_evAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
evUploadType :: Lens' EditsValidate (Maybe Text)
evUploadType
  = lens _evUploadType (\ s a -> s{_evUploadType = a})

-- | Identifier of the edit.
evEditId :: Lens' EditsValidate Text
evEditId = lens _evEditId (\ s a -> s{_evEditId = a})

-- | JSONP
evCallback :: Lens' EditsValidate (Maybe Text)
evCallback
  = lens _evCallback (\ s a -> s{_evCallback = a})

instance GoogleRequest EditsValidate where
        type Rs EditsValidate = AppEdit
        type Scopes EditsValidate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsValidate'{..}
          = go _evPackageName _evEditId _evXgafv
              _evUploadProtocol
              _evAccessToken
              _evUploadType
              _evCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsValidateResource)
                      mempty
