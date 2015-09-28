{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.EmailMigration.Mail.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ <https://developers.google.com/admin-sdk/email-migration/v2/ Email Migration API v2 Reference> for @emailMigration.mail.insert@.
module Network.Google.API.EmailMigration.Mail.Insert
    (
    -- * REST Resource
      MailInsertAPI

    -- * Creating a Request
    , mailInsert'
    , MailInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIp
    , miKey
    , miOauthToken
    , miUserKey
    , miFields
    , miAlt
    ) where

import           Network.Google.Admin.EmailMigration.Types
import           Network.Google.Prelude

-- | A resource alias for emailMigration.mail.insert which the
-- 'MailInsert'' request conforms to.
type MailInsertAPI =
     Capture "userKey" Text :>
       "mail" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ 'mailInsert'' smart constructor.
data MailInsert' = MailInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIp      :: !(Maybe Text)
    , _miKey         :: !(Maybe Text)
    , _miOauthToken  :: !(Maybe Text)
    , _miUserKey     :: !Text
    , _miFields      :: !(Maybe Text)
    , _miAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MailInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIp'
--
-- * 'miKey'
--
-- * 'miOauthToken'
--
-- * 'miUserKey'
--
-- * 'miFields'
--
-- * 'miAlt'
mailInsert'
    :: Text -- ^ 'userKey'
    -> MailInsert'
mailInsert' pMiUserKey_ =
    MailInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIp = Nothing
    , _miKey = Nothing
    , _miOauthToken = Nothing
    , _miUserKey = pMiUserKey_
    , _miFields = Nothing
    , _miAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MailInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MailInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIp :: Lens' MailInsert' (Maybe Text)
miUserIp = lens _miUserIp (\ s a -> s{_miUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MailInsert' (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOauthToken :: Lens' MailInsert' (Maybe Text)
miOauthToken
  = lens _miOauthToken (\ s a -> s{_miOauthToken = a})

-- | The email or immutable id of the user
miUserKey :: Lens' MailInsert' Text
miUserKey
  = lens _miUserKey (\ s a -> s{_miUserKey = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MailInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

-- | Data format for the response.
miAlt :: Lens' MailInsert' Alt
miAlt = lens _miAlt (\ s a -> s{_miAlt = a})

instance GoogleRequest MailInsert' where
        type Rs MailInsert' = ()
        request
          = requestWithRoute defReq adminEmailMigrationURL
        requestWithRoute r u MailInsert'{..}
          = go _miQuotaUser (Just _miPrettyPrint) _miUserIp
              _miKey
              _miOauthToken
              _miUserKey
              _miFields
              (Just _miAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MailInsertAPI) r u
