{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Update
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsExpansionfilesUpdate@.
module Androidpublisher.Edits.Expansionfiles.Update
    (
    -- * REST Resource
      EditsExpansionfilesUpdateAPI

    -- * Creating a Request
    , editsExpansionfilesUpdate
    , EditsExpansionfilesUpdate

    -- * Request Lenses
    , ediQuotaUser
    , ediPrettyPrint
    , ediPackageName
    , ediApkVersionCode
    , ediUserIp
    , ediKey
    , ediExpansionFileType
    , ediOauthToken
    , ediEditId
    , ediFields
    , ediAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsExpansionfilesUpdate@ which the
-- 'EditsExpansionfilesUpdate' request conforms to.
type EditsExpansionfilesUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType" Text :>
                   Put '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ 'editsExpansionfilesUpdate' smart constructor.
data EditsExpansionfilesUpdate = EditsExpansionfilesUpdate
    { _ediQuotaUser         :: !(Maybe Text)
    , _ediPrettyPrint       :: !Bool
    , _ediPackageName       :: !Text
    , _ediApkVersionCode    :: !Int32
    , _ediUserIp            :: !(Maybe Text)
    , _ediKey               :: !(Maybe Text)
    , _ediExpansionFileType :: !Text
    , _ediOauthToken        :: !(Maybe Text)
    , _ediEditId            :: !Text
    , _ediFields            :: !(Maybe Text)
    , _ediAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ediQuotaUser'
--
-- * 'ediPrettyPrint'
--
-- * 'ediPackageName'
--
-- * 'ediApkVersionCode'
--
-- * 'ediUserIp'
--
-- * 'ediKey'
--
-- * 'ediExpansionFileType'
--
-- * 'ediOauthToken'
--
-- * 'ediEditId'
--
-- * 'ediFields'
--
-- * 'ediAlt'
editsExpansionfilesUpdate
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesUpdate
editsExpansionfilesUpdate pEdiPackageName_ pEdiApkVersionCode_ pEdiExpansionFileType_ pEdiEditId_ =
    EditsExpansionfilesUpdate
    { _ediQuotaUser = Nothing
    , _ediPrettyPrint = True
    , _ediPackageName = pEdiPackageName_
    , _ediApkVersionCode = pEdiApkVersionCode_
    , _ediUserIp = Nothing
    , _ediKey = Nothing
    , _ediExpansionFileType = pEdiExpansionFileType_
    , _ediOauthToken = Nothing
    , _ediEditId = pEdiEditId_
    , _ediFields = Nothing
    , _ediAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ediQuotaUser :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
ediQuotaUser
  = lens _ediQuotaUser (\ s a -> s{_ediQuotaUser = a})

-- | Returns response with indentations and line breaks.
ediPrettyPrint :: Lens' EditsExpansionfilesUpdate' Bool
ediPrettyPrint
  = lens _ediPrettyPrint
      (\ s a -> s{_ediPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ediPackageName :: Lens' EditsExpansionfilesUpdate' Text
ediPackageName
  = lens _ediPackageName
      (\ s a -> s{_ediPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
ediApkVersionCode :: Lens' EditsExpansionfilesUpdate' Int32
ediApkVersionCode
  = lens _ediApkVersionCode
      (\ s a -> s{_ediApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ediUserIp :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
ediUserIp
  = lens _ediUserIp (\ s a -> s{_ediUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ediKey :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
ediKey = lens _ediKey (\ s a -> s{_ediKey = a})

ediExpansionFileType :: Lens' EditsExpansionfilesUpdate' Text
ediExpansionFileType
  = lens _ediExpansionFileType
      (\ s a -> s{_ediExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
ediOauthToken :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
ediOauthToken
  = lens _ediOauthToken
      (\ s a -> s{_ediOauthToken = a})

-- | Unique identifier for this edit.
ediEditId :: Lens' EditsExpansionfilesUpdate' Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

-- | Selector specifying which fields to include in a partial response.
ediFields :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
ediFields
  = lens _ediFields (\ s a -> s{_ediFields = a})

-- | Data format for the response.
ediAlt :: Lens' EditsExpansionfilesUpdate' Text
ediAlt = lens _ediAlt (\ s a -> s{_ediAlt = a})

instance GoogleRequest EditsExpansionfilesUpdate'
         where
        type Rs EditsExpansionfilesUpdate' = ExpansionFile
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsExpansionfilesUpdate{..}
          = go _ediQuotaUser _ediPrettyPrint _ediPackageName
              _ediApkVersionCode
              _ediUserIp
              _ediKey
              _ediExpansionFileType
              _ediOauthToken
              _ediEditId
              _ediFields
              _ediAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesUpdateAPI)
                      r
                      u
