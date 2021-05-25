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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details of an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.details.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Get
    (
    -- * REST Resource
      EditsDetailsGetResource

    -- * Creating a Request
    , editsDetailsGet
    , EditsDetailsGet

    -- * Request Lenses
    , edgXgafv
    , edgUploadProtocol
    , edgPackageName
    , edgAccessToken
    , edgUploadType
    , edgEditId
    , edgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.details.get@ method which the
-- 'EditsDetailsGet' request conforms to.
type EditsDetailsGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] AppDetails

-- | Gets details of an app.
--
-- /See:/ 'editsDetailsGet' smart constructor.
data EditsDetailsGet =
  EditsDetailsGet'
    { _edgXgafv :: !(Maybe Xgafv)
    , _edgUploadProtocol :: !(Maybe Text)
    , _edgPackageName :: !Text
    , _edgAccessToken :: !(Maybe Text)
    , _edgUploadType :: !(Maybe Text)
    , _edgEditId :: !Text
    , _edgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsDetailsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edgXgafv'
--
-- * 'edgUploadProtocol'
--
-- * 'edgPackageName'
--
-- * 'edgAccessToken'
--
-- * 'edgUploadType'
--
-- * 'edgEditId'
--
-- * 'edgCallback'
editsDetailsGet
    :: Text -- ^ 'edgPackageName'
    -> Text -- ^ 'edgEditId'
    -> EditsDetailsGet
editsDetailsGet pEdgPackageName_ pEdgEditId_ =
  EditsDetailsGet'
    { _edgXgafv = Nothing
    , _edgUploadProtocol = Nothing
    , _edgPackageName = pEdgPackageName_
    , _edgAccessToken = Nothing
    , _edgUploadType = Nothing
    , _edgEditId = pEdgEditId_
    , _edgCallback = Nothing
    }


-- | V1 error format.
edgXgafv :: Lens' EditsDetailsGet (Maybe Xgafv)
edgXgafv = lens _edgXgafv (\ s a -> s{_edgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edgUploadProtocol :: Lens' EditsDetailsGet (Maybe Text)
edgUploadProtocol
  = lens _edgUploadProtocol
      (\ s a -> s{_edgUploadProtocol = a})

-- | Package name of the app.
edgPackageName :: Lens' EditsDetailsGet Text
edgPackageName
  = lens _edgPackageName
      (\ s a -> s{_edgPackageName = a})

-- | OAuth access token.
edgAccessToken :: Lens' EditsDetailsGet (Maybe Text)
edgAccessToken
  = lens _edgAccessToken
      (\ s a -> s{_edgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edgUploadType :: Lens' EditsDetailsGet (Maybe Text)
edgUploadType
  = lens _edgUploadType
      (\ s a -> s{_edgUploadType = a})

-- | Identifier of the edit.
edgEditId :: Lens' EditsDetailsGet Text
edgEditId
  = lens _edgEditId (\ s a -> s{_edgEditId = a})

-- | JSONP
edgCallback :: Lens' EditsDetailsGet (Maybe Text)
edgCallback
  = lens _edgCallback (\ s a -> s{_edgCallback = a})

instance GoogleRequest EditsDetailsGet where
        type Rs EditsDetailsGet = AppDetails
        type Scopes EditsDetailsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDetailsGet'{..}
          = go _edgPackageName _edgEditId _edgXgafv
              _edgUploadProtocol
              _edgAccessToken
              _edgUploadType
              _edgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsDetailsGetResource)
                      mempty
