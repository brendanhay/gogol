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
module Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Update
    (
    -- * REST Resource
      EditsExpansionfilesUpdateResource

    -- * Creating a Request
    , editsExpansionfilesUpdate'
    , EditsExpansionfilesUpdate'

    -- * Request Lenses
    , eQuotaUser
    , ePrettyPrint
    , ePackageName
    , eApkVersionCode
    , eUserIp
    , eKey
    , eExpansionFileType
    , eOauthToken
    , eEditId
    , eFields
    , eAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsExpansionfilesUpdate@ which the
-- 'EditsExpansionfilesUpdate'' request conforms to.
type EditsExpansionfilesUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   AndroidpublisherEditsExpansionfilesUpdateExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ 'editsExpansionfilesUpdate'' smart constructor.
data EditsExpansionfilesUpdate' = EditsExpansionfilesUpdate'
    { _eQuotaUser         :: !(Maybe Text)
    , _ePrettyPrint       :: !Bool
    , _ePackageName       :: !Text
    , _eApkVersionCode    :: !Int32
    , _eUserIp            :: !(Maybe Text)
    , _eKey               :: !(Maybe Text)
    , _eExpansionFileType :: !AndroidpublisherEditsExpansionfilesUpdateExpansionFileType
    , _eOauthToken        :: !(Maybe Text)
    , _eEditId            :: !Text
    , _eFields            :: !(Maybe Text)
    , _eAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'ePrettyPrint'
--
-- * 'ePackageName'
--
-- * 'eApkVersionCode'
--
-- * 'eUserIp'
--
-- * 'eKey'
--
-- * 'eExpansionFileType'
--
-- * 'eOauthToken'
--
-- * 'eEditId'
--
-- * 'eFields'
--
-- * 'eAlt'
editsExpansionfilesUpdate'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> AndroidpublisherEditsExpansionfilesUpdateExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesUpdate'
editsExpansionfilesUpdate' pEPackageName_ pEApkVersionCode_ pEExpansionFileType_ pEEditId_ =
    EditsExpansionfilesUpdate'
    { _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _ePackageName = pEPackageName_
    , _eApkVersionCode = pEApkVersionCode_
    , _eUserIp = Nothing
    , _eKey = Nothing
    , _eExpansionFileType = pEExpansionFileType_
    , _eOauthToken = Nothing
    , _eEditId = pEEditId_
    , _eFields = Nothing
    , _eAlt = JSON
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

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsExpansionfilesUpdate' Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eApkVersionCode :: Lens' EditsExpansionfilesUpdate' Int32
eApkVersionCode
  = lens _eApkVersionCode
      (\ s a -> s{_eApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIp :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

eExpansionFileType :: Lens' EditsExpansionfilesUpdate' AndroidpublisherEditsExpansionfilesUpdateExpansionFileType
eExpansionFileType
  = lens _eExpansionFileType
      (\ s a -> s{_eExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsExpansionfilesUpdate' Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EditsExpansionfilesUpdate' Alt
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EditsExpansionfilesUpdate'
         where
        type Rs EditsExpansionfilesUpdate' = ExpansionFile
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsExpansionfilesUpdate'{..}
          = go _eQuotaUser (Just _ePrettyPrint) _ePackageName
              _eApkVersionCode
              _eUserIp
              _eKey
              _eExpansionFileType
              _eOauthToken
              _eEditId
              _eFields
              (Just _eAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesUpdateResource)
                      r
                      u
