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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates details of an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.details.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Update
    (
    -- * REST Resource
      EditsDetailsUpdateResource

    -- * Creating a Request
    , editsDetailsUpdate
    , EditsDetailsUpdate

    -- * Request Lenses
    , eduXgafv
    , eduUploadProtocol
    , eduPackageName
    , eduAccessToken
    , eduUploadType
    , eduPayload
    , eduEditId
    , eduCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.details.update@ method which the
-- 'EditsDetailsUpdate' request conforms to.
type EditsDetailsUpdateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] AppDetails :>
                                 Put '[JSON] AppDetails

-- | Updates details of an app.
--
-- /See:/ 'editsDetailsUpdate' smart constructor.
data EditsDetailsUpdate =
  EditsDetailsUpdate'
    { _eduXgafv :: !(Maybe Xgafv)
    , _eduUploadProtocol :: !(Maybe Text)
    , _eduPackageName :: !Text
    , _eduAccessToken :: !(Maybe Text)
    , _eduUploadType :: !(Maybe Text)
    , _eduPayload :: !AppDetails
    , _eduEditId :: !Text
    , _eduCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsDetailsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eduXgafv'
--
-- * 'eduUploadProtocol'
--
-- * 'eduPackageName'
--
-- * 'eduAccessToken'
--
-- * 'eduUploadType'
--
-- * 'eduPayload'
--
-- * 'eduEditId'
--
-- * 'eduCallback'
editsDetailsUpdate
    :: Text -- ^ 'eduPackageName'
    -> AppDetails -- ^ 'eduPayload'
    -> Text -- ^ 'eduEditId'
    -> EditsDetailsUpdate
editsDetailsUpdate pEduPackageName_ pEduPayload_ pEduEditId_ =
  EditsDetailsUpdate'
    { _eduXgafv = Nothing
    , _eduUploadProtocol = Nothing
    , _eduPackageName = pEduPackageName_
    , _eduAccessToken = Nothing
    , _eduUploadType = Nothing
    , _eduPayload = pEduPayload_
    , _eduEditId = pEduEditId_
    , _eduCallback = Nothing
    }


-- | V1 error format.
eduXgafv :: Lens' EditsDetailsUpdate (Maybe Xgafv)
eduXgafv = lens _eduXgafv (\ s a -> s{_eduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eduUploadProtocol :: Lens' EditsDetailsUpdate (Maybe Text)
eduUploadProtocol
  = lens _eduUploadProtocol
      (\ s a -> s{_eduUploadProtocol = a})

-- | Package name of the app.
eduPackageName :: Lens' EditsDetailsUpdate Text
eduPackageName
  = lens _eduPackageName
      (\ s a -> s{_eduPackageName = a})

-- | OAuth access token.
eduAccessToken :: Lens' EditsDetailsUpdate (Maybe Text)
eduAccessToken
  = lens _eduAccessToken
      (\ s a -> s{_eduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eduUploadType :: Lens' EditsDetailsUpdate (Maybe Text)
eduUploadType
  = lens _eduUploadType
      (\ s a -> s{_eduUploadType = a})

-- | Multipart request metadata.
eduPayload :: Lens' EditsDetailsUpdate AppDetails
eduPayload
  = lens _eduPayload (\ s a -> s{_eduPayload = a})

-- | Identifier of the edit.
eduEditId :: Lens' EditsDetailsUpdate Text
eduEditId
  = lens _eduEditId (\ s a -> s{_eduEditId = a})

-- | JSONP
eduCallback :: Lens' EditsDetailsUpdate (Maybe Text)
eduCallback
  = lens _eduCallback (\ s a -> s{_eduCallback = a})

instance GoogleRequest EditsDetailsUpdate where
        type Rs EditsDetailsUpdate = AppDetails
        type Scopes EditsDetailsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDetailsUpdate'{..}
          = go _eduPackageName _eduEditId _eduXgafv
              _eduUploadProtocol
              _eduAccessToken
              _eduUploadType
              _eduCallback
              (Just AltJSON)
              _eduPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsDetailsUpdateResource)
                      mempty
