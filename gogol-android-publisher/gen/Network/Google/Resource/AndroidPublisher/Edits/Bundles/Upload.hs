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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Bundles.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new Android App Bundle to this edit. If you are using the
-- Google API client libraries, please increase the timeout of the http
-- request before calling this endpoint (a timeout of 2 minutes is
-- recommended). See:
-- https:\/\/developers.google.com\/api-client-library\/java\/google-api-java-client\/errors
-- for an example in java.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.bundles.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.Bundles.Upload
    (
    -- * REST Resource
      EditsBundlesUploadResource

    -- * Creating a Request
    , editsBundlesUpload
    , EditsBundlesUpload

    -- * Request Lenses
    , ebuPackageName
    , ebuAckBundleInstallationWarning
    , ebuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.bundles.upload@ method which the
-- 'EditsBundlesUpload' request conforms to.
type EditsBundlesUploadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "bundles" :>
                   QueryParam "ackBundleInstallationWarning" Bool :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Bundle
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v3" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "bundles" :>
                       QueryParam "ackBundleInstallationWarning" Bool :>
                         QueryParam "alt" AltJSON :>
                           QueryParam "uploadType" AltMedia :>
                             AltMedia :> Post '[JSON] Bundle

-- | Uploads a new Android App Bundle to this edit. If you are using the
-- Google API client libraries, please increase the timeout of the http
-- request before calling this endpoint (a timeout of 2 minutes is
-- recommended). See:
-- https:\/\/developers.google.com\/api-client-library\/java\/google-api-java-client\/errors
-- for an example in java.
--
-- /See:/ 'editsBundlesUpload' smart constructor.
data EditsBundlesUpload = EditsBundlesUpload'
    { _ebuPackageName                  :: !Text
    , _ebuAckBundleInstallationWarning :: !(Maybe Bool)
    , _ebuEditId                       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsBundlesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebuPackageName'
--
-- * 'ebuAckBundleInstallationWarning'
--
-- * 'ebuEditId'
editsBundlesUpload
    :: Text -- ^ 'ebuPackageName'
    -> Text -- ^ 'ebuEditId'
    -> EditsBundlesUpload
editsBundlesUpload pEbuPackageName_ pEbuEditId_ =
    EditsBundlesUpload'
    { _ebuPackageName = pEbuPackageName_
    , _ebuAckBundleInstallationWarning = Nothing
    , _ebuEditId = pEbuEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ebuPackageName :: Lens' EditsBundlesUpload Text
ebuPackageName
  = lens _ebuPackageName
      (\ s a -> s{_ebuPackageName = a})

-- | Must be set to true if the bundle installation may trigger a warning on
-- user devices (for example, if installation size may be over a threshold,
-- typically 100 MB).
ebuAckBundleInstallationWarning :: Lens' EditsBundlesUpload (Maybe Bool)
ebuAckBundleInstallationWarning
  = lens _ebuAckBundleInstallationWarning
      (\ s a -> s{_ebuAckBundleInstallationWarning = a})

-- | Unique identifier for this edit.
ebuEditId :: Lens' EditsBundlesUpload Text
ebuEditId
  = lens _ebuEditId (\ s a -> s{_ebuEditId = a})

instance GoogleRequest EditsBundlesUpload where
        type Rs EditsBundlesUpload = Bundle
        type Scopes EditsBundlesUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsBundlesUpload'{..}
          = go _ebuPackageName _ebuEditId
              _ebuAckBundleInstallationWarning
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsBundlesUploadResource)
                      mempty

instance GoogleRequest
         (MediaUpload EditsBundlesUpload) where
        type Rs (MediaUpload EditsBundlesUpload) = Bundle
        type Scopes (MediaUpload EditsBundlesUpload) =
             Scopes EditsBundlesUpload
        requestClient
          (MediaUpload EditsBundlesUpload'{..} body)
          = go _ebuPackageName _ebuEditId
              _ebuAckBundleInstallationWarning
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsBundlesUploadResource)
                      mempty
