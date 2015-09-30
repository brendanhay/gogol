{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsExpansionfilesUpload@.
module Androidpublisher.Edits.Expansionfiles.Upload
    (
    -- * REST Resource
      EditsExpansionfilesUploadAPI

    -- * Creating a Request
    , editsExpansionfilesUpload
    , EditsExpansionfilesUpload

    -- * Request Lenses
    , eeuQuotaUser
    , eeuPrettyPrint
    , eeuPackageName
    , eeuApkVersionCode
    , eeuUserIp
    , eeuKey
    , eeuExpansionFileType
    , eeuOauthToken
    , eeuEditId
    , eeuFields
    , eeuAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsExpansionfilesUpload@ which the
-- 'EditsExpansionfilesUpload' request conforms to.
type EditsExpansionfilesUploadAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType" Text :>
                   Post '[JSON] ExpansionFilesUploadResponse

-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ 'editsExpansionfilesUpload' smart constructor.
data EditsExpansionfilesUpload = EditsExpansionfilesUpload
    { _eeuQuotaUser         :: !(Maybe Text)
    , _eeuPrettyPrint       :: !Bool
    , _eeuPackageName       :: !Text
    , _eeuApkVersionCode    :: !Int32
    , _eeuUserIp            :: !(Maybe Text)
    , _eeuKey               :: !(Maybe Text)
    , _eeuExpansionFileType :: !Text
    , _eeuOauthToken        :: !(Maybe Text)
    , _eeuEditId            :: !Text
    , _eeuFields            :: !(Maybe Text)
    , _eeuAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeuQuotaUser'
--
-- * 'eeuPrettyPrint'
--
-- * 'eeuPackageName'
--
-- * 'eeuApkVersionCode'
--
-- * 'eeuUserIp'
--
-- * 'eeuKey'
--
-- * 'eeuExpansionFileType'
--
-- * 'eeuOauthToken'
--
-- * 'eeuEditId'
--
-- * 'eeuFields'
--
-- * 'eeuAlt'
editsExpansionfilesUpload
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesUpload
editsExpansionfilesUpload pEeuPackageName_ pEeuApkVersionCode_ pEeuExpansionFileType_ pEeuEditId_ =
    EditsExpansionfilesUpload
    { _eeuQuotaUser = Nothing
    , _eeuPrettyPrint = True
    , _eeuPackageName = pEeuPackageName_
    , _eeuApkVersionCode = pEeuApkVersionCode_
    , _eeuUserIp = Nothing
    , _eeuKey = Nothing
    , _eeuExpansionFileType = pEeuExpansionFileType_
    , _eeuOauthToken = Nothing
    , _eeuEditId = pEeuEditId_
    , _eeuFields = Nothing
    , _eeuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eeuQuotaUser :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuQuotaUser
  = lens _eeuQuotaUser (\ s a -> s{_eeuQuotaUser = a})

-- | Returns response with indentations and line breaks.
eeuPrettyPrint :: Lens' EditsExpansionfilesUpload' Bool
eeuPrettyPrint
  = lens _eeuPrettyPrint
      (\ s a -> s{_eeuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eeuPackageName :: Lens' EditsExpansionfilesUpload' Text
eeuPackageName
  = lens _eeuPackageName
      (\ s a -> s{_eeuPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eeuApkVersionCode :: Lens' EditsExpansionfilesUpload' Int32
eeuApkVersionCode
  = lens _eeuApkVersionCode
      (\ s a -> s{_eeuApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eeuUserIp :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuUserIp
  = lens _eeuUserIp (\ s a -> s{_eeuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eeuKey :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuKey = lens _eeuKey (\ s a -> s{_eeuKey = a})

eeuExpansionFileType :: Lens' EditsExpansionfilesUpload' Text
eeuExpansionFileType
  = lens _eeuExpansionFileType
      (\ s a -> s{_eeuExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eeuOauthToken :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuOauthToken
  = lens _eeuOauthToken
      (\ s a -> s{_eeuOauthToken = a})

-- | Unique identifier for this edit.
eeuEditId :: Lens' EditsExpansionfilesUpload' Text
eeuEditId
  = lens _eeuEditId (\ s a -> s{_eeuEditId = a})

-- | Selector specifying which fields to include in a partial response.
eeuFields :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuFields
  = lens _eeuFields (\ s a -> s{_eeuFields = a})

-- | Data format for the response.
eeuAlt :: Lens' EditsExpansionfilesUpload' Text
eeuAlt = lens _eeuAlt (\ s a -> s{_eeuAlt = a})

instance GoogleRequest EditsExpansionfilesUpload'
         where
        type Rs EditsExpansionfilesUpload' =
             ExpansionFilesUploadResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsExpansionfilesUpload{..}
          = go _eeuQuotaUser _eeuPrettyPrint _eeuPackageName
              _eeuApkVersionCode
              _eeuUserIp
              _eeuKey
              _eeuExpansionFileType
              _eeuOauthToken
              _eeuEditId
              _eeuFields
              _eeuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesUploadAPI)
                      r
                      u
