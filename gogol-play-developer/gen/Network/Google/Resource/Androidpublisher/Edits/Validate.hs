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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Validate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks that the edit can be successfully committed. The edit\'s changes
-- are not applied to the live app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsValidate@.
module Network.Google.Resource.Androidpublisher.Edits.Validate
    (
    -- * REST Resource
      EditsValidateResource

    -- * Creating a Request
    , editsValidate'
    , EditsValidate'

    -- * Request Lenses
    , evQuotaUser
    , evPrettyPrint
    , evPackageName
    , evUserIp
    , evKey
    , evOauthToken
    , evEditId
    , evFields
    , evAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsValidate@ which the
-- 'EditsValidate'' request conforms to.
type EditsValidateResource =
     Capture "packageName" Text :>
       "edits" :>
         "{editId}:validate" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] AppEdit

-- | Checks that the edit can be successfully committed. The edit\'s changes
-- are not applied to the live app.
--
-- /See:/ 'editsValidate'' smart constructor.
data EditsValidate' = EditsValidate'
    { _evQuotaUser   :: !(Maybe Text)
    , _evPrettyPrint :: !Bool
    , _evPackageName :: !Text
    , _evUserIp      :: !(Maybe Text)
    , _evKey         :: !(Maybe Text)
    , _evOauthToken  :: !(Maybe Text)
    , _evEditId      :: !Text
    , _evFields      :: !(Maybe Text)
    , _evAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsValidate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evQuotaUser'
--
-- * 'evPrettyPrint'
--
-- * 'evPackageName'
--
-- * 'evUserIp'
--
-- * 'evKey'
--
-- * 'evOauthToken'
--
-- * 'evEditId'
--
-- * 'evFields'
--
-- * 'evAlt'
editsValidate'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsValidate'
editsValidate' pEvPackageName_ pEvEditId_ =
    EditsValidate'
    { _evQuotaUser = Nothing
    , _evPrettyPrint = True
    , _evPackageName = pEvPackageName_
    , _evUserIp = Nothing
    , _evKey = Nothing
    , _evOauthToken = Nothing
    , _evEditId = pEvEditId_
    , _evFields = Nothing
    , _evAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
evQuotaUser :: Lens' EditsValidate' (Maybe Text)
evQuotaUser
  = lens _evQuotaUser (\ s a -> s{_evQuotaUser = a})

-- | Returns response with indentations and line breaks.
evPrettyPrint :: Lens' EditsValidate' Bool
evPrettyPrint
  = lens _evPrettyPrint
      (\ s a -> s{_evPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
evPackageName :: Lens' EditsValidate' Text
evPackageName
  = lens _evPackageName
      (\ s a -> s{_evPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
evUserIp :: Lens' EditsValidate' (Maybe Text)
evUserIp = lens _evUserIp (\ s a -> s{_evUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
evKey :: Lens' EditsValidate' (Maybe Text)
evKey = lens _evKey (\ s a -> s{_evKey = a})

-- | OAuth 2.0 token for the current user.
evOauthToken :: Lens' EditsValidate' (Maybe Text)
evOauthToken
  = lens _evOauthToken (\ s a -> s{_evOauthToken = a})

-- | Unique identifier for this edit.
evEditId :: Lens' EditsValidate' Text
evEditId = lens _evEditId (\ s a -> s{_evEditId = a})

-- | Selector specifying which fields to include in a partial response.
evFields :: Lens' EditsValidate' (Maybe Text)
evFields = lens _evFields (\ s a -> s{_evFields = a})

-- | Data format for the response.
evAlt :: Lens' EditsValidate' Alt
evAlt = lens _evAlt (\ s a -> s{_evAlt = a})

instance GoogleRequest EditsValidate' where
        type Rs EditsValidate' = AppEdit
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsValidate'{..}
          = go _evQuotaUser (Just _evPrettyPrint)
              _evPackageName
              _evUserIp
              _evKey
              _evOauthToken
              _evEditId
              _evFields
              (Just _evAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsValidateResource)
                      r
                      u
