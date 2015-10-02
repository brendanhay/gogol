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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Patch
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionfilesPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Patch
    (
    -- * REST Resource
      EditsExpansionfilesPatchResource

    -- * Creating a Request
    , editsExpansionfilesPatch'
    , EditsExpansionfilesPatch'

    -- * Request Lenses
    , eepQuotaUser
    , eepPrettyPrint
    , eepExpansionFile
    , eepPackageName
    , eepAPKVersionCode
    , eepUserIP
    , eepKey
    , eepExpansionFileType
    , eepOAuthToken
    , eepEditId
    , eepFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionfilesPatch@ which the
-- 'EditsExpansionfilesPatch'' request conforms to.
type EditsExpansionfilesPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   AndroidPublisherEditsExpansionfilesPatchExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ExpansionFile :>
                                   Patch '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
--
-- /See:/ 'editsExpansionfilesPatch'' smart constructor.
data EditsExpansionfilesPatch' = EditsExpansionfilesPatch'
    { _eepQuotaUser         :: !(Maybe Text)
    , _eepPrettyPrint       :: !Bool
    , _eepExpansionFile     :: !ExpansionFile
    , _eepPackageName       :: !Text
    , _eepAPKVersionCode    :: !Int32
    , _eepUserIP            :: !(Maybe Text)
    , _eepKey               :: !(Maybe Key)
    , _eepExpansionFileType :: !AndroidPublisherEditsExpansionfilesPatchExpansionFileType
    , _eepOAuthToken        :: !(Maybe OAuthToken)
    , _eepEditId            :: !Text
    , _eepFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eepQuotaUser'
--
-- * 'eepPrettyPrint'
--
-- * 'eepExpansionFile'
--
-- * 'eepPackageName'
--
-- * 'eepAPKVersionCode'
--
-- * 'eepUserIP'
--
-- * 'eepKey'
--
-- * 'eepExpansionFileType'
--
-- * 'eepOAuthToken'
--
-- * 'eepEditId'
--
-- * 'eepFields'
editsExpansionfilesPatch'
    :: ExpansionFile -- ^ 'ExpansionFile'
    -> Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> AndroidPublisherEditsExpansionfilesPatchExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesPatch'
editsExpansionfilesPatch' pEepExpansionFile_ pEepPackageName_ pEepAPKVersionCode_ pEepExpansionFileType_ pEepEditId_ =
    EditsExpansionfilesPatch'
    { _eepQuotaUser = Nothing
    , _eepPrettyPrint = True
    , _eepExpansionFile = pEepExpansionFile_
    , _eepPackageName = pEepPackageName_
    , _eepAPKVersionCode = pEepAPKVersionCode_
    , _eepUserIP = Nothing
    , _eepKey = Nothing
    , _eepExpansionFileType = pEepExpansionFileType_
    , _eepOAuthToken = Nothing
    , _eepEditId = pEepEditId_
    , _eepFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eepQuotaUser :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepQuotaUser
  = lens _eepQuotaUser (\ s a -> s{_eepQuotaUser = a})

-- | Returns response with indentations and line breaks.
eepPrettyPrint :: Lens' EditsExpansionfilesPatch' Bool
eepPrettyPrint
  = lens _eepPrettyPrint
      (\ s a -> s{_eepPrettyPrint = a})

-- | Multipart request metadata.
eepExpansionFile :: Lens' EditsExpansionfilesPatch' ExpansionFile
eepExpansionFile
  = lens _eepExpansionFile
      (\ s a -> s{_eepExpansionFile = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eepPackageName :: Lens' EditsExpansionfilesPatch' Text
eepPackageName
  = lens _eepPackageName
      (\ s a -> s{_eepPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eepAPKVersionCode :: Lens' EditsExpansionfilesPatch' Int32
eepAPKVersionCode
  = lens _eepAPKVersionCode
      (\ s a -> s{_eepAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eepUserIP :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepUserIP
  = lens _eepUserIP (\ s a -> s{_eepUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eepKey :: Lens' EditsExpansionfilesPatch' (Maybe Key)
eepKey = lens _eepKey (\ s a -> s{_eepKey = a})

eepExpansionFileType :: Lens' EditsExpansionfilesPatch' AndroidPublisherEditsExpansionfilesPatchExpansionFileType
eepExpansionFileType
  = lens _eepExpansionFileType
      (\ s a -> s{_eepExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eepOAuthToken :: Lens' EditsExpansionfilesPatch' (Maybe OAuthToken)
eepOAuthToken
  = lens _eepOAuthToken
      (\ s a -> s{_eepOAuthToken = a})

-- | Unique identifier for this edit.
eepEditId :: Lens' EditsExpansionfilesPatch' Text
eepEditId
  = lens _eepEditId (\ s a -> s{_eepEditId = a})

-- | Selector specifying which fields to include in a partial response.
eepFields :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepFields
  = lens _eepFields (\ s a -> s{_eepFields = a})

instance GoogleAuth EditsExpansionfilesPatch' where
        authKey = eepKey . _Just
        authToken = eepOAuthToken . _Just

instance GoogleRequest EditsExpansionfilesPatch'
         where
        type Rs EditsExpansionfilesPatch' = ExpansionFile
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsExpansionfilesPatch'{..}
          = go _eepPackageName _eepEditId _eepAPKVersionCode
              _eepExpansionFileType
              _eepQuotaUser
              (Just _eepPrettyPrint)
              _eepUserIP
              _eepFields
              _eepKey
              _eepOAuthToken
              (Just AltJSON)
              _eepExpansionFile
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesPatchResource)
                      r
                      u
