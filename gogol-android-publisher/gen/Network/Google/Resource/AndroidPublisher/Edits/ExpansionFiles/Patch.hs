{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionFilesPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
    (
    -- * REST Resource
      EditsExpansionFilesPatchResource

    -- * Creating a Request
    , editsExpansionFilesPatch'
    , EditsExpansionFilesPatch'

    -- * Request Lenses
    , eefpQuotaUser
    , eefpPrettyPrint
    , eefpPackageName
    , eefpAPKVersionCode
    , eefpUserIP
    , eefpPayload
    , eefpKey
    , eefpExpansionFileType
    , eefpOAuthToken
    , eefpEditId
    , eefpFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionFilesPatch@ which the
-- 'EditsExpansionFilesPatch'' request conforms to.
type EditsExpansionFilesPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   EditsExpansionFilesPatchExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[OctetStream] ExpansionFile :>
                                   Patch '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
--
-- /See:/ 'editsExpansionFilesPatch'' smart constructor.
data EditsExpansionFilesPatch' = EditsExpansionFilesPatch'
    { _eefpQuotaUser         :: !(Maybe Text)
    , _eefpPrettyPrint       :: !Bool
    , _eefpPackageName       :: !Text
    , _eefpAPKVersionCode    :: !Int32
    , _eefpUserIP            :: !(Maybe Text)
    , _eefpPayload           :: !ExpansionFile
    , _eefpKey               :: !(Maybe Key)
    , _eefpExpansionFileType :: !EditsExpansionFilesPatchExpansionFileType
    , _eefpOAuthToken        :: !(Maybe OAuthToken)
    , _eefpEditId            :: !Text
    , _eefpFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefpQuotaUser'
--
-- * 'eefpPrettyPrint'
--
-- * 'eefpPackageName'
--
-- * 'eefpAPKVersionCode'
--
-- * 'eefpUserIP'
--
-- * 'eefpPayload'
--
-- * 'eefpKey'
--
-- * 'eefpExpansionFileType'
--
-- * 'eefpOAuthToken'
--
-- * 'eefpEditId'
--
-- * 'eefpFields'
editsExpansionFilesPatch'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> ExpansionFile -- ^ 'payload'
    -> EditsExpansionFilesPatchExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionFilesPatch'
editsExpansionFilesPatch' pEefpPackageName_ pEefpAPKVersionCode_ pEefpPayload_ pEefpExpansionFileType_ pEefpEditId_ =
    EditsExpansionFilesPatch'
    { _eefpQuotaUser = Nothing
    , _eefpPrettyPrint = True
    , _eefpPackageName = pEefpPackageName_
    , _eefpAPKVersionCode = pEefpAPKVersionCode_
    , _eefpUserIP = Nothing
    , _eefpPayload = pEefpPayload_
    , _eefpKey = Nothing
    , _eefpExpansionFileType = pEefpExpansionFileType_
    , _eefpOAuthToken = Nothing
    , _eefpEditId = pEefpEditId_
    , _eefpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eefpQuotaUser :: Lens' EditsExpansionFilesPatch' (Maybe Text)
eefpQuotaUser
  = lens _eefpQuotaUser
      (\ s a -> s{_eefpQuotaUser = a})

-- | Returns response with indentations and line breaks.
eefpPrettyPrint :: Lens' EditsExpansionFilesPatch' Bool
eefpPrettyPrint
  = lens _eefpPrettyPrint
      (\ s a -> s{_eefpPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eefpPackageName :: Lens' EditsExpansionFilesPatch' Text
eefpPackageName
  = lens _eefpPackageName
      (\ s a -> s{_eefpPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eefpAPKVersionCode :: Lens' EditsExpansionFilesPatch' Int32
eefpAPKVersionCode
  = lens _eefpAPKVersionCode
      (\ s a -> s{_eefpAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eefpUserIP :: Lens' EditsExpansionFilesPatch' (Maybe Text)
eefpUserIP
  = lens _eefpUserIP (\ s a -> s{_eefpUserIP = a})

-- | Multipart request metadata.
eefpPayload :: Lens' EditsExpansionFilesPatch' ExpansionFile
eefpPayload
  = lens _eefpPayload (\ s a -> s{_eefpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eefpKey :: Lens' EditsExpansionFilesPatch' (Maybe Key)
eefpKey = lens _eefpKey (\ s a -> s{_eefpKey = a})

eefpExpansionFileType :: Lens' EditsExpansionFilesPatch' EditsExpansionFilesPatchExpansionFileType
eefpExpansionFileType
  = lens _eefpExpansionFileType
      (\ s a -> s{_eefpExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eefpOAuthToken :: Lens' EditsExpansionFilesPatch' (Maybe OAuthToken)
eefpOAuthToken
  = lens _eefpOAuthToken
      (\ s a -> s{_eefpOAuthToken = a})

-- | Unique identifier for this edit.
eefpEditId :: Lens' EditsExpansionFilesPatch' Text
eefpEditId
  = lens _eefpEditId (\ s a -> s{_eefpEditId = a})

-- | Selector specifying which fields to include in a partial response.
eefpFields :: Lens' EditsExpansionFilesPatch' (Maybe Text)
eefpFields
  = lens _eefpFields (\ s a -> s{_eefpFields = a})

instance GoogleAuth EditsExpansionFilesPatch' where
        authKey = eefpKey . _Just
        authToken = eefpOAuthToken . _Just

instance GoogleRequest EditsExpansionFilesPatch'
         where
        type Rs EditsExpansionFilesPatch' = ExpansionFile
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsExpansionFilesPatch'{..}
          = go _eefpPackageName _eefpEditId _eefpAPKVersionCode
              _eefpExpansionFileType
              _eefpQuotaUser
              (Just _eefpPrettyPrint)
              _eefpUserIP
              _eefpFields
              _eefpKey
              _eefpOAuthToken
              (Just AltJSON)
              _eefpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionFilesPatchResource)
                      r
                      u
