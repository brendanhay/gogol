{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Patch
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsExpansionfilesPatch@.
module Androidpublisher.Edits.Expansionfiles.Patch
    (
    -- * REST Resource
      EditsExpansionfilesPatchAPI

    -- * Creating a Request
    , editsExpansionfilesPatch
    , EditsExpansionfilesPatch

    -- * Request Lenses
    , eepQuotaUser
    , eepPrettyPrint
    , eepPackageName
    , eepApkVersionCode
    , eepUserIp
    , eepKey
    , eepExpansionFileType
    , eepOauthToken
    , eepEditId
    , eepFields
    , eepAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsExpansionfilesPatch@ which the
-- 'EditsExpansionfilesPatch' request conforms to.
type EditsExpansionfilesPatchAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType" Text :>
                   Patch '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
--
-- /See:/ 'editsExpansionfilesPatch' smart constructor.
data EditsExpansionfilesPatch = EditsExpansionfilesPatch
    { _eepQuotaUser         :: !(Maybe Text)
    , _eepPrettyPrint       :: !Bool
    , _eepPackageName       :: !Text
    , _eepApkVersionCode    :: !Int32
    , _eepUserIp            :: !(Maybe Text)
    , _eepKey               :: !(Maybe Text)
    , _eepExpansionFileType :: !Text
    , _eepOauthToken        :: !(Maybe Text)
    , _eepEditId            :: !Text
    , _eepFields            :: !(Maybe Text)
    , _eepAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eepQuotaUser'
--
-- * 'eepPrettyPrint'
--
-- * 'eepPackageName'
--
-- * 'eepApkVersionCode'
--
-- * 'eepUserIp'
--
-- * 'eepKey'
--
-- * 'eepExpansionFileType'
--
-- * 'eepOauthToken'
--
-- * 'eepEditId'
--
-- * 'eepFields'
--
-- * 'eepAlt'
editsExpansionfilesPatch
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesPatch
editsExpansionfilesPatch pEepPackageName_ pEepApkVersionCode_ pEepExpansionFileType_ pEepEditId_ =
    EditsExpansionfilesPatch
    { _eepQuotaUser = Nothing
    , _eepPrettyPrint = True
    , _eepPackageName = pEepPackageName_
    , _eepApkVersionCode = pEepApkVersionCode_
    , _eepUserIp = Nothing
    , _eepKey = Nothing
    , _eepExpansionFileType = pEepExpansionFileType_
    , _eepOauthToken = Nothing
    , _eepEditId = pEepEditId_
    , _eepFields = Nothing
    , _eepAlt = "json"
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

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eepPackageName :: Lens' EditsExpansionfilesPatch' Text
eepPackageName
  = lens _eepPackageName
      (\ s a -> s{_eepPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eepApkVersionCode :: Lens' EditsExpansionfilesPatch' Int32
eepApkVersionCode
  = lens _eepApkVersionCode
      (\ s a -> s{_eepApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eepUserIp :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepUserIp
  = lens _eepUserIp (\ s a -> s{_eepUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eepKey :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepKey = lens _eepKey (\ s a -> s{_eepKey = a})

eepExpansionFileType :: Lens' EditsExpansionfilesPatch' Text
eepExpansionFileType
  = lens _eepExpansionFileType
      (\ s a -> s{_eepExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eepOauthToken :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepOauthToken
  = lens _eepOauthToken
      (\ s a -> s{_eepOauthToken = a})

-- | Unique identifier for this edit.
eepEditId :: Lens' EditsExpansionfilesPatch' Text
eepEditId
  = lens _eepEditId (\ s a -> s{_eepEditId = a})

-- | Selector specifying which fields to include in a partial response.
eepFields :: Lens' EditsExpansionfilesPatch' (Maybe Text)
eepFields
  = lens _eepFields (\ s a -> s{_eepFields = a})

-- | Data format for the response.
eepAlt :: Lens' EditsExpansionfilesPatch' Text
eepAlt = lens _eepAlt (\ s a -> s{_eepAlt = a})

instance GoogleRequest EditsExpansionfilesPatch'
         where
        type Rs EditsExpansionfilesPatch' = ExpansionFile
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsExpansionfilesPatch{..}
          = go _eepQuotaUser _eepPrettyPrint _eepPackageName
              _eepApkVersionCode
              _eepUserIp
              _eepKey
              _eepExpansionFileType
              _eepOauthToken
              _eepEditId
              _eepFields
              _eepAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesPatchAPI)
                      r
                      u
