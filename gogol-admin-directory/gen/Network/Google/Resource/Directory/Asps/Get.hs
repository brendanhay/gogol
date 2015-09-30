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
-- Module      : Network.Google.Resource.Directory.Asps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about an ASP issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryAspsGet@.
module Network.Google.Resource.Directory.Asps.Get
    (
    -- * REST Resource
      AspsGetResource

    -- * Creating a Request
    , aspsGet'
    , AspsGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agCodeId
    , agUserIp
    , agKey
    , agOauthToken
    , agUserKey
    , agFields
    , agAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryAspsGet@ which the
-- 'AspsGet'' request conforms to.
type AspsGetResource =
     "users" :>
       Capture "userKey" Text :>
         "asps" :>
           Capture "codeId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Asp

-- | Get information about an ASP issued by a user.
--
-- /See:/ 'aspsGet'' smart constructor.
data AspsGet' = AspsGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agCodeId      :: !Int32
    , _agUserIp      :: !(Maybe Text)
    , _agKey         :: !(Maybe Text)
    , _agOauthToken  :: !(Maybe Text)
    , _agUserKey     :: !Text
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AspsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agCodeId'
--
-- * 'agUserIp'
--
-- * 'agKey'
--
-- * 'agOauthToken'
--
-- * 'agUserKey'
--
-- * 'agFields'
--
-- * 'agAlt'
aspsGet'
    :: Int32 -- ^ 'codeId'
    -> Text -- ^ 'userKey'
    -> AspsGet'
aspsGet' pAgCodeId_ pAgUserKey_ =
    AspsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agCodeId = pAgCodeId_
    , _agUserIp = Nothing
    , _agKey = Nothing
    , _agOauthToken = Nothing
    , _agUserKey = pAgUserKey_
    , _agFields = Nothing
    , _agAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AspsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AspsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | The unique ID of the ASP.
agCodeId :: Lens' AspsGet' Int32
agCodeId = lens _agCodeId (\ s a -> s{_agCodeId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AspsGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AspsGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AspsGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
agUserKey :: Lens' AspsGet' Text
agUserKey
  = lens _agUserKey (\ s a -> s{_agUserKey = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AspsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AspsGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AspsGet' where
        type Rs AspsGet' = Asp
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u AspsGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agCodeId
              _agUserIp
              _agKey
              _agOauthToken
              _agUserKey
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AspsGetResource) r
                      u
