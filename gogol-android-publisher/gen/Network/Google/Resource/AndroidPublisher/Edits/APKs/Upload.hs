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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apks.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
    (
    -- * REST Resource
      EditsAPKsUploadResource

    -- * Creating a Request
    , editsAPKsUpload
    , EditsAPKsUpload

    -- * Request Lenses
    , eapkuPackageName
    , eapkuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apks.upload@ method which the
-- 'EditsAPKsUpload' request conforms to.
type EditsAPKsUploadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] APK
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v3" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "apks" :>
                       QueryParam "alt" AltJSON :>
                         QueryParam "uploadType" AltMedia :>
                           AltMedia :> Post '[JSON] APK

--
-- /See:/ 'editsAPKsUpload' smart constructor.
data EditsAPKsUpload =
  EditsAPKsUpload'
    { _eapkuPackageName :: !Text
    , _eapkuEditId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsAPKsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkuPackageName'
--
-- * 'eapkuEditId'
editsAPKsUpload
    :: Text -- ^ 'eapkuPackageName'
    -> Text -- ^ 'eapkuEditId'
    -> EditsAPKsUpload
editsAPKsUpload pEapkuPackageName_ pEapkuEditId_ =
  EditsAPKsUpload'
    {_eapkuPackageName = pEapkuPackageName_, _eapkuEditId = pEapkuEditId_}


-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkuPackageName :: Lens' EditsAPKsUpload Text
eapkuPackageName
  = lens _eapkuPackageName
      (\ s a -> s{_eapkuPackageName = a})

-- | Unique identifier for this edit.
eapkuEditId :: Lens' EditsAPKsUpload Text
eapkuEditId
  = lens _eapkuEditId (\ s a -> s{_eapkuEditId = a})

instance GoogleRequest EditsAPKsUpload where
        type Rs EditsAPKsUpload = APK
        type Scopes EditsAPKsUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsAPKsUpload'{..}
          = go _eapkuPackageName _eapkuEditId (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsAPKsUploadResource)
                      mempty

instance GoogleRequest (MediaUpload EditsAPKsUpload)
         where
        type Rs (MediaUpload EditsAPKsUpload) = APK
        type Scopes (MediaUpload EditsAPKsUpload) =
             Scopes EditsAPKsUpload
        requestClient (MediaUpload EditsAPKsUpload'{..} body)
          = go _eapkuPackageName _eapkuEditId (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsAPKsUploadResource)
                      mempty
