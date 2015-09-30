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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApksList@.
module Network.Google.Resource.Androidpublisher.Edits.Apks.List
    (
    -- * REST Resource
      EditsApksListResource

    -- * Creating a Request
    , editsApksList'
    , EditsApksList'

    -- * Request Lenses
    , ealQuotaUser
    , ealPrettyPrint
    , ealPackageName
    , ealUserIp
    , ealKey
    , ealOauthToken
    , ealEditId
    , ealFields
    , ealAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApksList@ which the
-- 'EditsApksList'' request conforms to.
type EditsApksListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ApksListResponse

--
-- /See:/ 'editsApksList'' smart constructor.
data EditsApksList' = EditsApksList'
    { _ealQuotaUser   :: !(Maybe Text)
    , _ealPrettyPrint :: !Bool
    , _ealPackageName :: !Text
    , _ealUserIp      :: !(Maybe Text)
    , _ealKey         :: !(Maybe Text)
    , _ealOauthToken  :: !(Maybe Text)
    , _ealEditId      :: !Text
    , _ealFields      :: !(Maybe Text)
    , _ealAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ealQuotaUser'
--
-- * 'ealPrettyPrint'
--
-- * 'ealPackageName'
--
-- * 'ealUserIp'
--
-- * 'ealKey'
--
-- * 'ealOauthToken'
--
-- * 'ealEditId'
--
-- * 'ealFields'
--
-- * 'ealAlt'
editsApksList'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsApksList'
editsApksList' pEalPackageName_ pEalEditId_ =
    EditsApksList'
    { _ealQuotaUser = Nothing
    , _ealPrettyPrint = True
    , _ealPackageName = pEalPackageName_
    , _ealUserIp = Nothing
    , _ealKey = Nothing
    , _ealOauthToken = Nothing
    , _ealEditId = pEalEditId_
    , _ealFields = Nothing
    , _ealAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ealQuotaUser :: Lens' EditsApksList' (Maybe Text)
ealQuotaUser
  = lens _ealQuotaUser (\ s a -> s{_ealQuotaUser = a})

-- | Returns response with indentations and line breaks.
ealPrettyPrint :: Lens' EditsApksList' Bool
ealPrettyPrint
  = lens _ealPrettyPrint
      (\ s a -> s{_ealPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ealPackageName :: Lens' EditsApksList' Text
ealPackageName
  = lens _ealPackageName
      (\ s a -> s{_ealPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ealUserIp :: Lens' EditsApksList' (Maybe Text)
ealUserIp
  = lens _ealUserIp (\ s a -> s{_ealUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ealKey :: Lens' EditsApksList' (Maybe Text)
ealKey = lens _ealKey (\ s a -> s{_ealKey = a})

-- | OAuth 2.0 token for the current user.
ealOauthToken :: Lens' EditsApksList' (Maybe Text)
ealOauthToken
  = lens _ealOauthToken
      (\ s a -> s{_ealOauthToken = a})

-- | Unique identifier for this edit.
ealEditId :: Lens' EditsApksList' Text
ealEditId
  = lens _ealEditId (\ s a -> s{_ealEditId = a})

-- | Selector specifying which fields to include in a partial response.
ealFields :: Lens' EditsApksList' (Maybe Text)
ealFields
  = lens _ealFields (\ s a -> s{_ealFields = a})

-- | Data format for the response.
ealAlt :: Lens' EditsApksList' Alt
ealAlt = lens _ealAlt (\ s a -> s{_ealAlt = a})

instance GoogleRequest EditsApksList' where
        type Rs EditsApksList' = ApksListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApksList'{..}
          = go _ealQuotaUser (Just _ealPrettyPrint)
              _ealPackageName
              _ealUserIp
              _ealKey
              _ealOauthToken
              _ealEditId
              _ealFields
              (Just _ealAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApksListResource)
                      r
                      u
