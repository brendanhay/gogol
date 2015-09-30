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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new edit for an app, populated with the app\'s current state.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsInsert@.
module Network.Google.Resource.Androidpublisher.Edits.Insert
    (
    -- * REST Resource
      EditsInsertResource

    -- * Creating a Request
    , editsInsert'
    , EditsInsert'

    -- * Request Lenses
    , eiQuotaUser
    , eiPrettyPrint
    , eiPackageName
    , eiUserIp
    , eiKey
    , eiOauthToken
    , eiFields
    , eiAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsInsert@ which the
-- 'EditsInsert'' request conforms to.
type EditsInsertResource =
     Capture "packageName" Text :>
       "edits" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] AppEdit

-- | Creates a new edit for an app, populated with the app\'s current state.
--
-- /See:/ 'editsInsert'' smart constructor.
data EditsInsert' = EditsInsert'
    { _eiQuotaUser   :: !(Maybe Text)
    , _eiPrettyPrint :: !Bool
    , _eiPackageName :: !Text
    , _eiUserIp      :: !(Maybe Text)
    , _eiKey         :: !(Maybe Text)
    , _eiOauthToken  :: !(Maybe Text)
    , _eiFields      :: !(Maybe Text)
    , _eiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiQuotaUser'
--
-- * 'eiPrettyPrint'
--
-- * 'eiPackageName'
--
-- * 'eiUserIp'
--
-- * 'eiKey'
--
-- * 'eiOauthToken'
--
-- * 'eiFields'
--
-- * 'eiAlt'
editsInsert'
    :: Text -- ^ 'packageName'
    -> EditsInsert'
editsInsert' pEiPackageName_ =
    EditsInsert'
    { _eiQuotaUser = Nothing
    , _eiPrettyPrint = True
    , _eiPackageName = pEiPackageName_
    , _eiUserIp = Nothing
    , _eiKey = Nothing
    , _eiOauthToken = Nothing
    , _eiFields = Nothing
    , _eiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eiQuotaUser :: Lens' EditsInsert' (Maybe Text)
eiQuotaUser
  = lens _eiQuotaUser (\ s a -> s{_eiQuotaUser = a})

-- | Returns response with indentations and line breaks.
eiPrettyPrint :: Lens' EditsInsert' Bool
eiPrettyPrint
  = lens _eiPrettyPrint
      (\ s a -> s{_eiPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eiPackageName :: Lens' EditsInsert' Text
eiPackageName
  = lens _eiPackageName
      (\ s a -> s{_eiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eiUserIp :: Lens' EditsInsert' (Maybe Text)
eiUserIp = lens _eiUserIp (\ s a -> s{_eiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiKey :: Lens' EditsInsert' (Maybe Text)
eiKey = lens _eiKey (\ s a -> s{_eiKey = a})

-- | OAuth 2.0 token for the current user.
eiOauthToken :: Lens' EditsInsert' (Maybe Text)
eiOauthToken
  = lens _eiOauthToken (\ s a -> s{_eiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eiFields :: Lens' EditsInsert' (Maybe Text)
eiFields = lens _eiFields (\ s a -> s{_eiFields = a})

-- | Data format for the response.
eiAlt :: Lens' EditsInsert' Alt
eiAlt = lens _eiAlt (\ s a -> s{_eiAlt = a})

instance GoogleRequest EditsInsert' where
        type Rs EditsInsert' = AppEdit
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsInsert'{..}
          = go _eiQuotaUser (Just _eiPrettyPrint)
              _eiPackageName
              _eiUserIp
              _eiKey
              _eiOauthToken
              _eiFields
              (Just _eiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsInsertResource)
                      r
                      u
