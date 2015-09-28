{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Apks.Addexternallyhosted
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to enterprises using Google Play for Work whose application is
-- configured to restrict distribution to the enterprise domain.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apks.addexternallyhosted@.
module Network.Google.API.Androidpublisher.Edits.Apks.Addexternallyhosted
    (
    -- * REST Resource
      EditsApksAddexternallyhostedAPI

    -- * Creating a Request
    , editsApksAddexternallyhosted'
    , EditsApksAddexternallyhosted'

    -- * Request Lenses
    , eaaQuotaUser
    , eaaPrettyPrint
    , eaaPackageName
    , eaaUserIp
    , eaaKey
    , eaaOauthToken
    , eaaEditId
    , eaaFields
    , eaaAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.apks.addexternallyhosted which the
-- 'EditsApksAddexternallyhosted'' request conforms to.
type EditsApksAddexternallyhostedAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             "externallyHosted" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] ApksAddExternallyHostedResponse

-- | Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to enterprises using Google Play for Work whose application is
-- configured to restrict distribution to the enterprise domain.
--
-- /See:/ 'editsApksAddexternallyhosted'' smart constructor.
data EditsApksAddexternallyhosted' = EditsApksAddexternallyhosted'
    { _eaaQuotaUser   :: !(Maybe Text)
    , _eaaPrettyPrint :: !Bool
    , _eaaPackageName :: !Text
    , _eaaUserIp      :: !(Maybe Text)
    , _eaaKey         :: !(Maybe Text)
    , _eaaOauthToken  :: !(Maybe Text)
    , _eaaEditId      :: !Text
    , _eaaFields      :: !(Maybe Text)
    , _eaaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApksAddexternallyhosted'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaaQuotaUser'
--
-- * 'eaaPrettyPrint'
--
-- * 'eaaPackageName'
--
-- * 'eaaUserIp'
--
-- * 'eaaKey'
--
-- * 'eaaOauthToken'
--
-- * 'eaaEditId'
--
-- * 'eaaFields'
--
-- * 'eaaAlt'
editsApksAddexternallyhosted'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsApksAddexternallyhosted'
editsApksAddexternallyhosted' pEaaPackageName_ pEaaEditId_ =
    EditsApksAddexternallyhosted'
    { _eaaQuotaUser = Nothing
    , _eaaPrettyPrint = True
    , _eaaPackageName = pEaaPackageName_
    , _eaaUserIp = Nothing
    , _eaaKey = Nothing
    , _eaaOauthToken = Nothing
    , _eaaEditId = pEaaEditId_
    , _eaaFields = Nothing
    , _eaaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eaaQuotaUser :: Lens' EditsApksAddexternallyhosted' (Maybe Text)
eaaQuotaUser
  = lens _eaaQuotaUser (\ s a -> s{_eaaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eaaPrettyPrint :: Lens' EditsApksAddexternallyhosted' Bool
eaaPrettyPrint
  = lens _eaaPrettyPrint
      (\ s a -> s{_eaaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eaaPackageName :: Lens' EditsApksAddexternallyhosted' Text
eaaPackageName
  = lens _eaaPackageName
      (\ s a -> s{_eaaPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eaaUserIp :: Lens' EditsApksAddexternallyhosted' (Maybe Text)
eaaUserIp
  = lens _eaaUserIp (\ s a -> s{_eaaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eaaKey :: Lens' EditsApksAddexternallyhosted' (Maybe Text)
eaaKey = lens _eaaKey (\ s a -> s{_eaaKey = a})

-- | OAuth 2.0 token for the current user.
eaaOauthToken :: Lens' EditsApksAddexternallyhosted' (Maybe Text)
eaaOauthToken
  = lens _eaaOauthToken
      (\ s a -> s{_eaaOauthToken = a})

-- | Unique identifier for this edit.
eaaEditId :: Lens' EditsApksAddexternallyhosted' Text
eaaEditId
  = lens _eaaEditId (\ s a -> s{_eaaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eaaFields :: Lens' EditsApksAddexternallyhosted' (Maybe Text)
eaaFields
  = lens _eaaFields (\ s a -> s{_eaaFields = a})

-- | Data format for the response.
eaaAlt :: Lens' EditsApksAddexternallyhosted' Alt
eaaAlt = lens _eaaAlt (\ s a -> s{_eaaAlt = a})

instance GoogleRequest EditsApksAddexternallyhosted'
         where
        type Rs EditsApksAddexternallyhosted' =
             ApksAddExternallyHostedResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u
          EditsApksAddexternallyhosted'{..}
          = go _eaaQuotaUser (Just _eaaPrettyPrint)
              _eaaPackageName
              _eaaUserIp
              _eaaKey
              _eaaOauthToken
              _eaaEditId
              _eaaFields
              (Just _eaaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApksAddexternallyhostedAPI)
                      r
                      u
