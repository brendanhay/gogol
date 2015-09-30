{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsExpansionfilesGet@.
module Androidpublisher.Edits.Expansionfiles.Get
    (
    -- * REST Resource
      EditsExpansionfilesGetAPI

    -- * Creating a Request
    , editsExpansionfilesGet
    , EditsExpansionfilesGet

    -- * Request Lenses
    , eegQuotaUser
    , eegPrettyPrint
    , eegPackageName
    , eegApkVersionCode
    , eegUserIp
    , eegKey
    , eegExpansionFileType
    , eegOauthToken
    , eegEditId
    , eegFields
    , eegAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsExpansionfilesGet@ which the
-- 'EditsExpansionfilesGet' request conforms to.
type EditsExpansionfilesGetAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType" Text :>
                   Get '[JSON] ExpansionFile

-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ 'editsExpansionfilesGet' smart constructor.
data EditsExpansionfilesGet = EditsExpansionfilesGet
    { _eegQuotaUser         :: !(Maybe Text)
    , _eegPrettyPrint       :: !Bool
    , _eegPackageName       :: !Text
    , _eegApkVersionCode    :: !Int32
    , _eegUserIp            :: !(Maybe Text)
    , _eegKey               :: !(Maybe Text)
    , _eegExpansionFileType :: !Text
    , _eegOauthToken        :: !(Maybe Text)
    , _eegEditId            :: !Text
    , _eegFields            :: !(Maybe Text)
    , _eegAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eegQuotaUser'
--
-- * 'eegPrettyPrint'
--
-- * 'eegPackageName'
--
-- * 'eegApkVersionCode'
--
-- * 'eegUserIp'
--
-- * 'eegKey'
--
-- * 'eegExpansionFileType'
--
-- * 'eegOauthToken'
--
-- * 'eegEditId'
--
-- * 'eegFields'
--
-- * 'eegAlt'
editsExpansionfilesGet
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesGet
editsExpansionfilesGet pEegPackageName_ pEegApkVersionCode_ pEegExpansionFileType_ pEegEditId_ =
    EditsExpansionfilesGet
    { _eegQuotaUser = Nothing
    , _eegPrettyPrint = True
    , _eegPackageName = pEegPackageName_
    , _eegApkVersionCode = pEegApkVersionCode_
    , _eegUserIp = Nothing
    , _eegKey = Nothing
    , _eegExpansionFileType = pEegExpansionFileType_
    , _eegOauthToken = Nothing
    , _eegEditId = pEegEditId_
    , _eegFields = Nothing
    , _eegAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eegQuotaUser :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegQuotaUser
  = lens _eegQuotaUser (\ s a -> s{_eegQuotaUser = a})

-- | Returns response with indentations and line breaks.
eegPrettyPrint :: Lens' EditsExpansionfilesGet' Bool
eegPrettyPrint
  = lens _eegPrettyPrint
      (\ s a -> s{_eegPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eegPackageName :: Lens' EditsExpansionfilesGet' Text
eegPackageName
  = lens _eegPackageName
      (\ s a -> s{_eegPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eegApkVersionCode :: Lens' EditsExpansionfilesGet' Int32
eegApkVersionCode
  = lens _eegApkVersionCode
      (\ s a -> s{_eegApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eegUserIp :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegUserIp
  = lens _eegUserIp (\ s a -> s{_eegUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eegKey :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegKey = lens _eegKey (\ s a -> s{_eegKey = a})

eegExpansionFileType :: Lens' EditsExpansionfilesGet' Text
eegExpansionFileType
  = lens _eegExpansionFileType
      (\ s a -> s{_eegExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eegOauthToken :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegOauthToken
  = lens _eegOauthToken
      (\ s a -> s{_eegOauthToken = a})

-- | Unique identifier for this edit.
eegEditId :: Lens' EditsExpansionfilesGet' Text
eegEditId
  = lens _eegEditId (\ s a -> s{_eegEditId = a})

-- | Selector specifying which fields to include in a partial response.
eegFields :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegFields
  = lens _eegFields (\ s a -> s{_eegFields = a})

-- | Data format for the response.
eegAlt :: Lens' EditsExpansionfilesGet' Text
eegAlt = lens _eegAlt (\ s a -> s{_eegAlt = a})

instance GoogleRequest EditsExpansionfilesGet' where
        type Rs EditsExpansionfilesGet' = ExpansionFile
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsExpansionfilesGet{..}
          = go _eegQuotaUser _eegPrettyPrint _eegPackageName
              _eegApkVersionCode
              _eegUserIp
              _eegKey
              _eegExpansionFileType
              _eegOauthToken
              _eegEditId
              _eegFields
              _eegAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesGetAPI)
                      r
                      u
