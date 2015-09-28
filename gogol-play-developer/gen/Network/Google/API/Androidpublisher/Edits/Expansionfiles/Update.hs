{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Expansionfiles.Update
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.expansionfiles.update@.
module Network.Google.API.Androidpublisher.Edits.Expansionfiles.Update
    (
    -- * REST Resource
      EditsExpansionfilesUpdateAPI

    -- * Creating a Request
    , editsExpansionfilesUpdate'
    , EditsExpansionfilesUpdate'

    -- * Request Lenses
    , eeueQuotaUser
    , eeuePrettyPrint
    , eeuePackageName
    , eeueApkVersionCode
    , eeueUserIp
    , eeueKey
    , eeueExpansionFileType
    , eeueOauthToken
    , eeueEditId
    , eeueFields
    , eeueAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.expansionfiles.update which the
-- 'EditsExpansionfilesUpdate'' request conforms to.
type EditsExpansionfilesUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   EditsExpansionfilesUpdate'ExpansionFileType
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
    { _eeueQuotaUser         :: !(Maybe Text)
    , _eeuePrettyPrint       :: !Bool
    , _eeuePackageName       :: !Text
    , _eeueApkVersionCode    :: !Int32
    , _eeueUserIp            :: !(Maybe Text)
    , _eeueKey               :: !(Maybe Text)
    , _eeueExpansionFileType :: !EditsExpansionfilesUpdate'ExpansionFileType
    , _eeueOauthToken        :: !(Maybe Text)
    , _eeueEditId            :: !Text
    , _eeueFields            :: !(Maybe Text)
    , _eeueAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeueQuotaUser'
--
-- * 'eeuePrettyPrint'
--
-- * 'eeuePackageName'
--
-- * 'eeueApkVersionCode'
--
-- * 'eeueUserIp'
--
-- * 'eeueKey'
--
-- * 'eeueExpansionFileType'
--
-- * 'eeueOauthToken'
--
-- * 'eeueEditId'
--
-- * 'eeueFields'
--
-- * 'eeueAlt'
editsExpansionfilesUpdate'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> EditsExpansionfilesUpdate'ExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesUpdate'
editsExpansionfilesUpdate' pEeuePackageName_ pEeueApkVersionCode_ pEeueExpansionFileType_ pEeueEditId_ =
    EditsExpansionfilesUpdate'
    { _eeueQuotaUser = Nothing
    , _eeuePrettyPrint = True
    , _eeuePackageName = pEeuePackageName_
    , _eeueApkVersionCode = pEeueApkVersionCode_
    , _eeueUserIp = Nothing
    , _eeueKey = Nothing
    , _eeueExpansionFileType = pEeueExpansionFileType_
    , _eeueOauthToken = Nothing
    , _eeueEditId = pEeueEditId_
    , _eeueFields = Nothing
    , _eeueAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eeueQuotaUser :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eeueQuotaUser
  = lens _eeueQuotaUser
      (\ s a -> s{_eeueQuotaUser = a})

-- | Returns response with indentations and line breaks.
eeuePrettyPrint :: Lens' EditsExpansionfilesUpdate' Bool
eeuePrettyPrint
  = lens _eeuePrettyPrint
      (\ s a -> s{_eeuePrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eeuePackageName :: Lens' EditsExpansionfilesUpdate' Text
eeuePackageName
  = lens _eeuePackageName
      (\ s a -> s{_eeuePackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eeueApkVersionCode :: Lens' EditsExpansionfilesUpdate' Int32
eeueApkVersionCode
  = lens _eeueApkVersionCode
      (\ s a -> s{_eeueApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eeueUserIp :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eeueUserIp
  = lens _eeueUserIp (\ s a -> s{_eeueUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eeueKey :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eeueKey = lens _eeueKey (\ s a -> s{_eeueKey = a})

eeueExpansionFileType :: Lens' EditsExpansionfilesUpdate' EditsExpansionfilesUpdate'ExpansionFileType
eeueExpansionFileType
  = lens _eeueExpansionFileType
      (\ s a -> s{_eeueExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eeueOauthToken :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eeueOauthToken
  = lens _eeueOauthToken
      (\ s a -> s{_eeueOauthToken = a})

-- | Unique identifier for this edit.
eeueEditId :: Lens' EditsExpansionfilesUpdate' Text
eeueEditId
  = lens _eeueEditId (\ s a -> s{_eeueEditId = a})

-- | Selector specifying which fields to include in a partial response.
eeueFields :: Lens' EditsExpansionfilesUpdate' (Maybe Text)
eeueFields
  = lens _eeueFields (\ s a -> s{_eeueFields = a})

-- | Data format for the response.
eeueAlt :: Lens' EditsExpansionfilesUpdate' Alt
eeueAlt = lens _eeueAlt (\ s a -> s{_eeueAlt = a})

instance GoogleRequest EditsExpansionfilesUpdate'
         where
        type Rs EditsExpansionfilesUpdate' = ExpansionFile
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsExpansionfilesUpdate'{..}
          = go _eeueQuotaUser (Just _eeuePrettyPrint)
              _eeuePackageName
              _eeueApkVersionCode
              _eeueUserIp
              _eeueKey
              _eeueExpansionFileType
              _eeueOauthToken
              _eeueEditId
              _eeueFields
              (Just _eeueAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesUpdateAPI)
                      r
                      u
