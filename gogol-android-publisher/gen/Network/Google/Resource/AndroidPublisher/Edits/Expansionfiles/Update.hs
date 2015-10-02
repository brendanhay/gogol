{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Update
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionfilesUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Update
    (
    -- * REST Resource
      EditsExpansionfilesUpdateResource

    -- * Creating a Request
    , editsExpansionfilesUpdate'
    , EditsExpansionfilesUpdate'

    -- * Request Lenses
    , eQuotaUser
    , ePrettyPrint
    , eExpansionFile
    , ePackageName
    , eAPKVersionCode
    , eUserIP
    , eKey
    , eExpansionFileType
    , eOAuthToken
    , eEditId
    , eFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionfilesUpdate@ which the
-- 'EditsExpansionfilesUpdate'' request conforms to.
type EditsExpansionfilesUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   AndroidPublisherEditsExpansionfilesUpdateExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ExpansionFile :>
                                   Put '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ 'editsExpansionfilesUpdate'' smart constructor.
data EditsExpansionfilesUpdate' = EditsExpansionfilesUpdate'
    { _eQuotaUser         :: !(Maybe Text)
    , _ePrettyPrint       :: !Bool
    , _eExpansionFile     :: !ExpansionFile
    , _ePackageName       :: !Text
    , _eAPKVersionCode    :: !Int32
    , _eUserIP            :: !(Maybe Text)
    , _eKey               :: !(Maybe Key)
    , _eExpansionFileType :: !AndroidPublisherEditsExpansionfilesUpdateExpansionFileType
    , _eOAuthToken        :: !(Maybe OAuthToken)
    , _eEditId            :: !Text
    , _eFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'ePrettyPrint'
--
-- * 'eExpansionFile'
--
-- * 'ePackageName'
--
-- * 'eAPKVersionCode'
--
-- * 'eUserIP'
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
editsExpansionfilesUpdate'
    :: ExpansionFile -- ^ 'ExpansionFile'
    -> Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> AndroidPublisherEditsExpansionfilesUpdateExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesUpdate'
editsExpansionfilesUpdate' pEExpansionFile_ pEPackageName_ pEAPKVersionCode_ pEExpansionFileType_ pEEditId_ =
    EditsExpansionfilesUpdate'
    { _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _eExpansionFile = pEExpansionFile_
    , _ePackageName = pEPackageName_
    , _eAPKVersionCode = pEAPKVersionCode_
    , _eUserIP = Nothing
    , _eKey = Nothing
    , _eExpansionFileType = pEExpansionFileType_
    , _eOAuthToken = Nothing
    , _eEditId = pEEditId_
    , _eFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EditsExpansionfilesUpdate' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | Multipart request metadata.
eExpansionFile :: Lens' EditsExpansionfilesUpdate' ExpansionFile
eExpansionFile
  = lens _eExpansionFile
      (\ s a -> s{_eExpansionFile = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsExpansionfilesUpdate' Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eAPKVersionCode :: Lens' EditsExpansionfilesUpdate' Int32
eAPKVersionCode
  = lens _eAPKVersionCode
      (\ s a -> s{_eAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIP :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eUserIP = lens _eUserIP (\ s a -> s{_eUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EditsExpansionfilesUpdate' (Maybe Key)
eKey = lens _eKey (\ s a -> s{_eKey = a})

eExpansionFileType :: Lens' EditsExpansionfilesUpdate' AndroidPublisherEditsExpansionfilesUpdateExpansionFileType
eExpansionFileType
  = lens _eExpansionFileType
      (\ s a -> s{_eExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eOAuthToken :: Lens' EditsExpansionfilesUpdate' (Maybe OAuthToken)
eOAuthToken
  = lens _eOAuthToken (\ s a -> s{_eOAuthToken = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsExpansionfilesUpdate' Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

instance GoogleAuth EditsExpansionfilesUpdate' where
        authKey = eKey . _Just
        authToken = eOAuthToken . _Just

instance GoogleRequest EditsExpansionfilesUpdate'
         where
        type Rs EditsExpansionfilesUpdate' = ExpansionFile
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsExpansionfilesUpdate'{..}
          = go _eQuotaUser (Just _ePrettyPrint) _ePackageName
              _eAPKVersionCode
              _eUserIP
              _eKey
              _eExpansionFileType
              _eOAuthToken
              _eEditId
              _eFields
              (Just AltJSON)
              _eExpansionFile
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesUpdateResource)
                      r
                      u
