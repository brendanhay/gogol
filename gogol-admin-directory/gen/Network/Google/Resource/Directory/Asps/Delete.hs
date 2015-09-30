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
-- Module      : Network.Google.Resource.Directory.Asps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an ASP issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryAspsDelete@.
module Network.Google.Resource.Directory.Asps.Delete
    (
    -- * REST Resource
      AspsDeleteResource

    -- * Creating a Request
    , aspsDelete'
    , AspsDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adCodeId
    , adUserIp
    , adKey
    , adOauthToken
    , adUserKey
    , adFields
    , adAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryAspsDelete@ which the
-- 'AspsDelete'' request conforms to.
type AspsDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete an ASP issued by a user.
--
-- /See:/ 'aspsDelete'' smart constructor.
data AspsDelete' = AspsDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adCodeId      :: !Int32
    , _adUserIp      :: !(Maybe Text)
    , _adKey         :: !(Maybe Text)
    , _adOauthToken  :: !(Maybe Text)
    , _adUserKey     :: !Text
    , _adFields      :: !(Maybe Text)
    , _adAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AspsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adCodeId'
--
-- * 'adUserIp'
--
-- * 'adKey'
--
-- * 'adOauthToken'
--
-- * 'adUserKey'
--
-- * 'adFields'
--
-- * 'adAlt'
aspsDelete'
    :: Int32 -- ^ 'codeId'
    -> Text -- ^ 'userKey'
    -> AspsDelete'
aspsDelete' pAdCodeId_ pAdUserKey_ =
    AspsDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adCodeId = pAdCodeId_
    , _adUserIp = Nothing
    , _adKey = Nothing
    , _adOauthToken = Nothing
    , _adUserKey = pAdUserKey_
    , _adFields = Nothing
    , _adAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AspsDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AspsDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | The unique ID of the ASP to be deleted.
adCodeId :: Lens' AspsDelete' Int32
adCodeId = lens _adCodeId (\ s a -> s{_adCodeId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIp :: Lens' AspsDelete' (Maybe Text)
adUserIp = lens _adUserIp (\ s a -> s{_adUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AspsDelete' (Maybe Text)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | OAuth 2.0 token for the current user.
adOauthToken :: Lens' AspsDelete' (Maybe Text)
adOauthToken
  = lens _adOauthToken (\ s a -> s{_adOauthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
adUserKey :: Lens' AspsDelete' Text
adUserKey
  = lens _adUserKey (\ s a -> s{_adUserKey = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AspsDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

-- | Data format for the response.
adAlt :: Lens' AspsDelete' Alt
adAlt = lens _adAlt (\ s a -> s{_adAlt = a})

instance GoogleRequest AspsDelete' where
        type Rs AspsDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u AspsDelete'{..}
          = go _adQuotaUser (Just _adPrettyPrint) _adCodeId
              _adUserIp
              _adKey
              _adOauthToken
              _adUserKey
              _adFields
              (Just _adAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AspsDeleteResource)
                      r
                      u
