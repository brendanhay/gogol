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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to enterprises using Google Play for Work whose application is
-- configured to restrict distribution to the enterprise domain.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKsAddexternallyhosted@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted
    (
    -- * REST Resource
      EditsAPKsAddexternallyhostedResource

    -- * Creating a Request
    , editsAPKsAddexternallyhosted'
    , EditsAPKsAddexternallyhosted'

    -- * Request Lenses
    , eapkaPackageName
    , eapkaPayload
    , eapkaEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKsAddexternallyhosted@ method which the
-- 'EditsAPKsAddexternallyhosted'' request conforms to.
type EditsAPKsAddexternallyhostedResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             "externallyHosted" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] APKsAddExternallyHostedRequest :>
                   Post '[JSON] APKsAddExternallyHostedResponse

-- | Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to enterprises using Google Play for Work whose application is
-- configured to restrict distribution to the enterprise domain.
--
-- /See:/ 'editsAPKsAddexternallyhosted'' smart constructor.
data EditsAPKsAddexternallyhosted' = EditsAPKsAddexternallyhosted'
    { _eapkaPackageName :: !Text
    , _eapkaPayload     :: !APKsAddExternallyHostedRequest
    , _eapkaEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKsAddexternallyhosted'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkaPackageName'
--
-- * 'eapkaPayload'
--
-- * 'eapkaEditId'
editsAPKsAddexternallyhosted'
    :: Text -- ^ 'packageName'
    -> APKsAddExternallyHostedRequest -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsAPKsAddexternallyhosted'
editsAPKsAddexternallyhosted' pEapkaPackageName_ pEapkaPayload_ pEapkaEditId_ =
    EditsAPKsAddexternallyhosted'
    { _eapkaPackageName = pEapkaPackageName_
    , _eapkaPayload = pEapkaPayload_
    , _eapkaEditId = pEapkaEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkaPackageName :: Lens' EditsAPKsAddexternallyhosted' Text
eapkaPackageName
  = lens _eapkaPackageName
      (\ s a -> s{_eapkaPackageName = a})

-- | Multipart request metadata.
eapkaPayload :: Lens' EditsAPKsAddexternallyhosted' APKsAddExternallyHostedRequest
eapkaPayload
  = lens _eapkaPayload (\ s a -> s{_eapkaPayload = a})

-- | Unique identifier for this edit.
eapkaEditId :: Lens' EditsAPKsAddexternallyhosted' Text
eapkaEditId
  = lens _eapkaEditId (\ s a -> s{_eapkaEditId = a})

instance GoogleRequest EditsAPKsAddexternallyhosted'
         where
        type Rs EditsAPKsAddexternallyhosted' =
             APKsAddExternallyHostedResponse
        requestClient EditsAPKsAddexternallyhosted'{..}
          = go _eapkaPackageName _eapkaEditId (Just AltJSON)
              _eapkaPayload
              androidPublisher
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKsAddexternallyhostedResource)
                      mempty
