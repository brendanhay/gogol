{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionFilesUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
    (
    -- * REST Resource
      EditsExpansionFilesUpdateResource

    -- * Creating a Request
    , editsExpansionFilesUpdate'
    , EditsExpansionFilesUpdate'

    -- * Request Lenses
    , eQuotaUser
    , ePrettyPrint
    , ePackageName
    , eAPKVersionCode
    , eUserIP
    , ePayload
    , eKey
    , eExpansionFileType
    , eOAuthToken
    , eEditId
    , eFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionFilesUpdate@ which the
-- 'EditsExpansionFilesUpdate'' request conforms to.
type EditsExpansionFilesUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   EditsExpansionFilesUpdateExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ExpansionFile :>
                                   Put '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ 'editsExpansionFilesUpdate'' smart constructor.
data EditsExpansionFilesUpdate' = EditsExpansionFilesUpdate'
    { _eQuotaUser         :: !(Maybe Text)
    , _ePrettyPrint       :: !Bool
    , _ePackageName       :: !Text
    , _eAPKVersionCode    :: !Int32
    , _eUserIP            :: !(Maybe Text)
    , _ePayload           :: !ExpansionFile
    , _eKey               :: !(Maybe Key)
    , _eExpansionFileType :: !EditsExpansionFilesUpdateExpansionFileType
    , _eOAuthToken        :: !(Maybe OAuthToken)
    , _eEditId            :: !Text
    , _eFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'ePrettyPrint'
--
-- * 'ePackageName'
--
-- * 'eAPKVersionCode'
--
-- * 'eUserIP'
--
-- * 'ePayload'
--
-- * 'eKey'
--
-- * 'eExpansionFileType'
--
-- * 'eOAuthToken'
--
-- * 'eEditId'
--
-- * 'eFields'
editsExpansionFilesUpdate'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> ExpansionFile -- ^ 'payload'
    -> EditsExpansionFilesUpdateExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionFilesUpdate'
editsExpansionFilesUpdate' pEPackageName_ pEAPKVersionCode_ pEPayload_ pEExpansionFileType_ pEEditId_ =
    EditsExpansionFilesUpdate'
    { _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _ePackageName = pEPackageName_
    , _eAPKVersionCode = pEAPKVersionCode_
    , _eUserIP = Nothing
    , _ePayload = pEPayload_
    , _eKey = Nothing
    , _eExpansionFileType = pEExpansionFileType_
    , _eOAuthToken = Nothing
    , _eEditId = pEEditId_
    , _eFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EditsExpansionFilesUpdate' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EditsExpansionFilesUpdate' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsExpansionFilesUpdate' Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eAPKVersionCode :: Lens' EditsExpansionFilesUpdate' Int32
eAPKVersionCode
  = lens _eAPKVersionCode
      (\ s a -> s{_eAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIP :: Lens' EditsExpansionFilesUpdate' (Maybe Text)
eUserIP = lens _eUserIP (\ s a -> s{_eUserIP = a})

-- | Multipart request metadata.
ePayload :: Lens' EditsExpansionFilesUpdate' ExpansionFile
ePayload = lens _ePayload (\ s a -> s{_ePayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EditsExpansionFilesUpdate' (Maybe Key)
eKey = lens _eKey (\ s a -> s{_eKey = a})

eExpansionFileType :: Lens' EditsExpansionFilesUpdate' EditsExpansionFilesUpdateExpansionFileType
eExpansionFileType
  = lens _eExpansionFileType
      (\ s a -> s{_eExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eOAuthToken :: Lens' EditsExpansionFilesUpdate' (Maybe OAuthToken)
eOAuthToken
  = lens _eOAuthToken (\ s a -> s{_eOAuthToken = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsExpansionFilesUpdate' Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EditsExpansionFilesUpdate' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

instance GoogleAuth EditsExpansionFilesUpdate' where
        authKey = eKey . _Just
        authToken = eOAuthToken . _Just

instance GoogleRequest EditsExpansionFilesUpdate'
         where
        type Rs EditsExpansionFilesUpdate' = ExpansionFile
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsExpansionFilesUpdate'{..}
          = go _ePackageName _eEditId _eAPKVersionCode
              _eExpansionFileType
              _eQuotaUser
              (Just _ePrettyPrint)
              _eUserIP
              _eFields
              _eKey
              _eOAuthToken
              (Just AltJSON)
              _ePayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionFilesUpdateResource)
                      r
                      u
