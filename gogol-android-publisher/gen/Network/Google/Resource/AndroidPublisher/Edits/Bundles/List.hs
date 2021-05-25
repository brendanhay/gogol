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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Bundles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all current Android App Bundles of the app and edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.bundles.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Bundles.List
    (
    -- * REST Resource
      EditsBundlesListResource

    -- * Creating a Request
    , editsBundlesList
    , EditsBundlesList

    -- * Request Lenses
    , eblXgafv
    , eblUploadProtocol
    , eblPackageName
    , eblAccessToken
    , eblUploadType
    , eblEditId
    , eblCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.bundles.list@ method which the
-- 'EditsBundlesList' request conforms to.
type EditsBundlesListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "bundles" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] BundlesListResponse

-- | Lists all current Android App Bundles of the app and edit.
--
-- /See:/ 'editsBundlesList' smart constructor.
data EditsBundlesList =
  EditsBundlesList'
    { _eblXgafv :: !(Maybe Xgafv)
    , _eblUploadProtocol :: !(Maybe Text)
    , _eblPackageName :: !Text
    , _eblAccessToken :: !(Maybe Text)
    , _eblUploadType :: !(Maybe Text)
    , _eblEditId :: !Text
    , _eblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsBundlesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eblXgafv'
--
-- * 'eblUploadProtocol'
--
-- * 'eblPackageName'
--
-- * 'eblAccessToken'
--
-- * 'eblUploadType'
--
-- * 'eblEditId'
--
-- * 'eblCallback'
editsBundlesList
    :: Text -- ^ 'eblPackageName'
    -> Text -- ^ 'eblEditId'
    -> EditsBundlesList
editsBundlesList pEblPackageName_ pEblEditId_ =
  EditsBundlesList'
    { _eblXgafv = Nothing
    , _eblUploadProtocol = Nothing
    , _eblPackageName = pEblPackageName_
    , _eblAccessToken = Nothing
    , _eblUploadType = Nothing
    , _eblEditId = pEblEditId_
    , _eblCallback = Nothing
    }


-- | V1 error format.
eblXgafv :: Lens' EditsBundlesList (Maybe Xgafv)
eblXgafv = lens _eblXgafv (\ s a -> s{_eblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eblUploadProtocol :: Lens' EditsBundlesList (Maybe Text)
eblUploadProtocol
  = lens _eblUploadProtocol
      (\ s a -> s{_eblUploadProtocol = a})

-- | Package name of the app.
eblPackageName :: Lens' EditsBundlesList Text
eblPackageName
  = lens _eblPackageName
      (\ s a -> s{_eblPackageName = a})

-- | OAuth access token.
eblAccessToken :: Lens' EditsBundlesList (Maybe Text)
eblAccessToken
  = lens _eblAccessToken
      (\ s a -> s{_eblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eblUploadType :: Lens' EditsBundlesList (Maybe Text)
eblUploadType
  = lens _eblUploadType
      (\ s a -> s{_eblUploadType = a})

-- | Identifier of the edit.
eblEditId :: Lens' EditsBundlesList Text
eblEditId
  = lens _eblEditId (\ s a -> s{_eblEditId = a})

-- | JSONP
eblCallback :: Lens' EditsBundlesList (Maybe Text)
eblCallback
  = lens _eblCallback (\ s a -> s{_eblCallback = a})

instance GoogleRequest EditsBundlesList where
        type Rs EditsBundlesList = BundlesListResponse
        type Scopes EditsBundlesList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsBundlesList'{..}
          = go _eblPackageName _eblEditId _eblXgafv
              _eblUploadProtocol
              _eblAccessToken
              _eblUploadType
              _eblCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsBundlesListResource)
                      mempty
