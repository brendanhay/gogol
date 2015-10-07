{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.UserProFiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of user profiles for a user.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserProFilesList@.
module Network.Google.Resource.DFAReporting.UserProFiles.List
    (
    -- * REST Resource
      UserProFilesListResource

    -- * Creating a Request
    , userProFilesList'
    , UserProFilesList'

    -- * Request Lenses
    , upflQuotaUser
    , upflPrettyPrint
    , upflUserIP
    , upflKey
    , upflOAuthToken
    , upflFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserProFilesList@ method which the
-- 'UserProFilesList'' request conforms to.
type UserProFilesListResource =
     "userprofiles" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] UserProFileList

-- | Retrieves list of user profiles for a user.
--
-- /See:/ 'userProFilesList'' smart constructor.
data UserProFilesList' = UserProFilesList'
    { _upflQuotaUser   :: !(Maybe Text)
    , _upflPrettyPrint :: !Bool
    , _upflUserIP      :: !(Maybe Text)
    , _upflKey         :: !(Maybe AuthKey)
    , _upflOAuthToken  :: !(Maybe OAuthToken)
    , _upflFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upflQuotaUser'
--
-- * 'upflPrettyPrint'
--
-- * 'upflUserIP'
--
-- * 'upflKey'
--
-- * 'upflOAuthToken'
--
-- * 'upflFields'
userProFilesList'
    :: UserProFilesList'
userProFilesList' =
    UserProFilesList'
    { _upflQuotaUser = Nothing
    , _upflPrettyPrint = True
    , _upflUserIP = Nothing
    , _upflKey = Nothing
    , _upflOAuthToken = Nothing
    , _upflFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
upflQuotaUser :: Lens' UserProFilesList' (Maybe Text)
upflQuotaUser
  = lens _upflQuotaUser
      (\ s a -> s{_upflQuotaUser = a})

-- | Returns response with indentations and line breaks.
upflPrettyPrint :: Lens' UserProFilesList' Bool
upflPrettyPrint
  = lens _upflPrettyPrint
      (\ s a -> s{_upflPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
upflUserIP :: Lens' UserProFilesList' (Maybe Text)
upflUserIP
  = lens _upflUserIP (\ s a -> s{_upflUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upflKey :: Lens' UserProFilesList' (Maybe AuthKey)
upflKey = lens _upflKey (\ s a -> s{_upflKey = a})

-- | OAuth 2.0 token for the current user.
upflOAuthToken :: Lens' UserProFilesList' (Maybe OAuthToken)
upflOAuthToken
  = lens _upflOAuthToken
      (\ s a -> s{_upflOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
upflFields :: Lens' UserProFilesList' (Maybe Text)
upflFields
  = lens _upflFields (\ s a -> s{_upflFields = a})

instance GoogleAuth UserProFilesList' where
        _AuthKey = upflKey . _Just
        _AuthToken = upflOAuthToken . _Just

instance GoogleRequest UserProFilesList' where
        type Rs UserProFilesList' = UserProFileList
        request = requestWith dFAReportingRequest
        requestWith rq UserProFilesList'{..}
          = go _upflQuotaUser (Just _upflPrettyPrint)
              _upflUserIP
              _upflFields
              _upflKey
              _upflOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UserProFilesListResource)
                      rq
