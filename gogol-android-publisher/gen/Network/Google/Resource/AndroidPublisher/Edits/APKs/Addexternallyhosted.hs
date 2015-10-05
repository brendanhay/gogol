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
    , eapkaQuotaUser
    , eapkaPrettyPrint
    , eapkaPackageName
    , eapkaUserIP
    , eapkaPayload
    , eapkaKey
    , eapkaOAuthToken
    , eapkaEditId
    , eapkaFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKsAddexternallyhosted@ which the
-- 'EditsAPKsAddexternallyhosted'' request conforms to.
type EditsAPKsAddexternallyhostedResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             "externallyHosted" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
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
    { _eapkaQuotaUser   :: !(Maybe Text)
    , _eapkaPrettyPrint :: !Bool
    , _eapkaPackageName :: !Text
    , _eapkaUserIP      :: !(Maybe Text)
    , _eapkaPayload     :: !APKsAddExternallyHostedRequest
    , _eapkaKey         :: !(Maybe Key)
    , _eapkaOAuthToken  :: !(Maybe OAuthToken)
    , _eapkaEditId      :: !Text
    , _eapkaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKsAddexternallyhosted'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkaQuotaUser'
--
-- * 'eapkaPrettyPrint'
--
-- * 'eapkaPackageName'
--
-- * 'eapkaUserIP'
--
-- * 'eapkaPayload'
--
-- * 'eapkaKey'
--
-- * 'eapkaOAuthToken'
--
-- * 'eapkaEditId'
--
-- * 'eapkaFields'
editsAPKsAddexternallyhosted'
    :: Text -- ^ 'packageName'
    -> APKsAddExternallyHostedRequest -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsAPKsAddexternallyhosted'
editsAPKsAddexternallyhosted' pEapkaPackageName_ pEapkaPayload_ pEapkaEditId_ =
    EditsAPKsAddexternallyhosted'
    { _eapkaQuotaUser = Nothing
    , _eapkaPrettyPrint = True
    , _eapkaPackageName = pEapkaPackageName_
    , _eapkaUserIP = Nothing
    , _eapkaPayload = pEapkaPayload_
    , _eapkaKey = Nothing
    , _eapkaOAuthToken = Nothing
    , _eapkaEditId = pEapkaEditId_
    , _eapkaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapkaQuotaUser :: Lens' EditsAPKsAddexternallyhosted' (Maybe Text)
eapkaQuotaUser
  = lens _eapkaQuotaUser
      (\ s a -> s{_eapkaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapkaPrettyPrint :: Lens' EditsAPKsAddexternallyhosted' Bool
eapkaPrettyPrint
  = lens _eapkaPrettyPrint
      (\ s a -> s{_eapkaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkaPackageName :: Lens' EditsAPKsAddexternallyhosted' Text
eapkaPackageName
  = lens _eapkaPackageName
      (\ s a -> s{_eapkaPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapkaUserIP :: Lens' EditsAPKsAddexternallyhosted' (Maybe Text)
eapkaUserIP
  = lens _eapkaUserIP (\ s a -> s{_eapkaUserIP = a})

-- | Multipart request metadata.
eapkaPayload :: Lens' EditsAPKsAddexternallyhosted' APKsAddExternallyHostedRequest
eapkaPayload
  = lens _eapkaPayload (\ s a -> s{_eapkaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapkaKey :: Lens' EditsAPKsAddexternallyhosted' (Maybe Key)
eapkaKey = lens _eapkaKey (\ s a -> s{_eapkaKey = a})

-- | OAuth 2.0 token for the current user.
eapkaOAuthToken :: Lens' EditsAPKsAddexternallyhosted' (Maybe OAuthToken)
eapkaOAuthToken
  = lens _eapkaOAuthToken
      (\ s a -> s{_eapkaOAuthToken = a})

-- | Unique identifier for this edit.
eapkaEditId :: Lens' EditsAPKsAddexternallyhosted' Text
eapkaEditId
  = lens _eapkaEditId (\ s a -> s{_eapkaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapkaFields :: Lens' EditsAPKsAddexternallyhosted' (Maybe Text)
eapkaFields
  = lens _eapkaFields (\ s a -> s{_eapkaFields = a})

instance GoogleAuth EditsAPKsAddexternallyhosted'
         where
        authKey = eapkaKey . _Just
        authToken = eapkaOAuthToken . _Just

instance GoogleRequest EditsAPKsAddexternallyhosted'
         where
        type Rs EditsAPKsAddexternallyhosted' =
             APKsAddExternallyHostedResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u
          EditsAPKsAddexternallyhosted'{..}
          = go _eapkaPackageName _eapkaEditId _eapkaQuotaUser
              (Just _eapkaPrettyPrint)
              _eapkaUserIP
              _eapkaFields
              _eapkaKey
              _eapkaOAuthToken
              (Just AltJSON)
              _eapkaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKsAddexternallyhostedResource)
                      r
                      u
