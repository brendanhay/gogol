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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an app edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Get
    (
    -- * REST Resource
      EditsGetResource

    -- * Creating a Request
    , editsGet
    , EditsGet

    -- * Request Lenses
    , egXgafv
    , egUploadProtocol
    , egPackageName
    , egAccessToken
    , egUploadType
    , egEditId
    , egCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.get@ method which the
-- 'EditsGet' request conforms to.
type EditsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] AppEdit

-- | Gets an app edit.
--
-- /See:/ 'editsGet' smart constructor.
data EditsGet =
  EditsGet'
    { _egXgafv :: !(Maybe Xgafv)
    , _egUploadProtocol :: !(Maybe Text)
    , _egPackageName :: !Text
    , _egAccessToken :: !(Maybe Text)
    , _egUploadType :: !(Maybe Text)
    , _egEditId :: !Text
    , _egCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egXgafv'
--
-- * 'egUploadProtocol'
--
-- * 'egPackageName'
--
-- * 'egAccessToken'
--
-- * 'egUploadType'
--
-- * 'egEditId'
--
-- * 'egCallback'
editsGet
    :: Text -- ^ 'egPackageName'
    -> Text -- ^ 'egEditId'
    -> EditsGet
editsGet pEgPackageName_ pEgEditId_ =
  EditsGet'
    { _egXgafv = Nothing
    , _egUploadProtocol = Nothing
    , _egPackageName = pEgPackageName_
    , _egAccessToken = Nothing
    , _egUploadType = Nothing
    , _egEditId = pEgEditId_
    , _egCallback = Nothing
    }


-- | V1 error format.
egXgafv :: Lens' EditsGet (Maybe Xgafv)
egXgafv = lens _egXgafv (\ s a -> s{_egXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
egUploadProtocol :: Lens' EditsGet (Maybe Text)
egUploadProtocol
  = lens _egUploadProtocol
      (\ s a -> s{_egUploadProtocol = a})

-- | Package name of the app.
egPackageName :: Lens' EditsGet Text
egPackageName
  = lens _egPackageName
      (\ s a -> s{_egPackageName = a})

-- | OAuth access token.
egAccessToken :: Lens' EditsGet (Maybe Text)
egAccessToken
  = lens _egAccessToken
      (\ s a -> s{_egAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
egUploadType :: Lens' EditsGet (Maybe Text)
egUploadType
  = lens _egUploadType (\ s a -> s{_egUploadType = a})

-- | Identifier of the edit.
egEditId :: Lens' EditsGet Text
egEditId = lens _egEditId (\ s a -> s{_egEditId = a})

-- | JSONP
egCallback :: Lens' EditsGet (Maybe Text)
egCallback
  = lens _egCallback (\ s a -> s{_egCallback = a})

instance GoogleRequest EditsGet where
        type Rs EditsGet = AppEdit
        type Scopes EditsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsGet'{..}
          = go _egPackageName _egEditId _egXgafv
              _egUploadProtocol
              _egAccessToken
              _egUploadType
              _egCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsGetResource)
                      mempty
