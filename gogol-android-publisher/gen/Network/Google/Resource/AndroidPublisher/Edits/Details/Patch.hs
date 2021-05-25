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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches details of an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.details.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
    (
    -- * REST Resource
      EditsDetailsPatchResource

    -- * Creating a Request
    , editsDetailsPatch
    , EditsDetailsPatch

    -- * Request Lenses
    , edpXgafv
    , edpUploadProtocol
    , edpPackageName
    , edpAccessToken
    , edpUploadType
    , edpPayload
    , edpEditId
    , edpCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.details.patch@ method which the
-- 'EditsDetailsPatch' request conforms to.
type EditsDetailsPatchResource =
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
                                 Patch '[JSON] AppDetails

-- | Patches details of an app.
--
-- /See:/ 'editsDetailsPatch' smart constructor.
data EditsDetailsPatch =
  EditsDetailsPatch'
    { _edpXgafv :: !(Maybe Xgafv)
    , _edpUploadProtocol :: !(Maybe Text)
    , _edpPackageName :: !Text
    , _edpAccessToken :: !(Maybe Text)
    , _edpUploadType :: !(Maybe Text)
    , _edpPayload :: !AppDetails
    , _edpEditId :: !Text
    , _edpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsDetailsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edpXgafv'
--
-- * 'edpUploadProtocol'
--
-- * 'edpPackageName'
--
-- * 'edpAccessToken'
--
-- * 'edpUploadType'
--
-- * 'edpPayload'
--
-- * 'edpEditId'
--
-- * 'edpCallback'
editsDetailsPatch
    :: Text -- ^ 'edpPackageName'
    -> AppDetails -- ^ 'edpPayload'
    -> Text -- ^ 'edpEditId'
    -> EditsDetailsPatch
editsDetailsPatch pEdpPackageName_ pEdpPayload_ pEdpEditId_ =
  EditsDetailsPatch'
    { _edpXgafv = Nothing
    , _edpUploadProtocol = Nothing
    , _edpPackageName = pEdpPackageName_
    , _edpAccessToken = Nothing
    , _edpUploadType = Nothing
    , _edpPayload = pEdpPayload_
    , _edpEditId = pEdpEditId_
    , _edpCallback = Nothing
    }


-- | V1 error format.
edpXgafv :: Lens' EditsDetailsPatch (Maybe Xgafv)
edpXgafv = lens _edpXgafv (\ s a -> s{_edpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edpUploadProtocol :: Lens' EditsDetailsPatch (Maybe Text)
edpUploadProtocol
  = lens _edpUploadProtocol
      (\ s a -> s{_edpUploadProtocol = a})

-- | Package name of the app.
edpPackageName :: Lens' EditsDetailsPatch Text
edpPackageName
  = lens _edpPackageName
      (\ s a -> s{_edpPackageName = a})

-- | OAuth access token.
edpAccessToken :: Lens' EditsDetailsPatch (Maybe Text)
edpAccessToken
  = lens _edpAccessToken
      (\ s a -> s{_edpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edpUploadType :: Lens' EditsDetailsPatch (Maybe Text)
edpUploadType
  = lens _edpUploadType
      (\ s a -> s{_edpUploadType = a})

-- | Multipart request metadata.
edpPayload :: Lens' EditsDetailsPatch AppDetails
edpPayload
  = lens _edpPayload (\ s a -> s{_edpPayload = a})

-- | Identifier of the edit.
edpEditId :: Lens' EditsDetailsPatch Text
edpEditId
  = lens _edpEditId (\ s a -> s{_edpEditId = a})

-- | JSONP
edpCallback :: Lens' EditsDetailsPatch (Maybe Text)
edpCallback
  = lens _edpCallback (\ s a -> s{_edpCallback = a})

instance GoogleRequest EditsDetailsPatch where
        type Rs EditsDetailsPatch = AppDetails
        type Scopes EditsDetailsPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDetailsPatch'{..}
          = go _edpPackageName _edpEditId _edpXgafv
              _edpUploadProtocol
              _edpAccessToken
              _edpUploadType
              _edpCallback
              (Just AltJSON)
              _edpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsDetailsPatchResource)
                      mempty
