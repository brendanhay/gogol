{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List a specific saved ad style for the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsSavedadstylesGet@.
module AdSense.Accounts.Savedadstyles.Get
    (
    -- * REST Resource
      AccountsSavedadstylesGetAPI

    -- * Creating a Request
    , accountsSavedadstylesGet
    , AccountsSavedadstylesGet

    -- * Request Lenses
    , asgQuotaUser
    , asgPrettyPrint
    , asgSavedAdStyleId
    , asgUserIp
    , asgAccountId
    , asgKey
    , asgOauthToken
    , asgFields
    , asgAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsSavedadstylesGet@ which the
-- 'AccountsSavedadstylesGet' request conforms to.
type AccountsSavedadstylesGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "savedadstyles" :>
           Capture "savedAdStyleId" Text :>
             Get '[JSON] SavedAdStyle

-- | List a specific saved ad style for the specified account.
--
-- /See:/ 'accountsSavedadstylesGet' smart constructor.
data AccountsSavedadstylesGet = AccountsSavedadstylesGet
    { _asgQuotaUser      :: !(Maybe Text)
    , _asgPrettyPrint    :: !Bool
    , _asgSavedAdStyleId :: !Text
    , _asgUserIp         :: !(Maybe Text)
    , _asgAccountId      :: !Text
    , _asgKey            :: !(Maybe Text)
    , _asgOauthToken     :: !(Maybe Text)
    , _asgFields         :: !(Maybe Text)
    , _asgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsSavedadstylesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgQuotaUser'
--
-- * 'asgPrettyPrint'
--
-- * 'asgSavedAdStyleId'
--
-- * 'asgUserIp'
--
-- * 'asgAccountId'
--
-- * 'asgKey'
--
-- * 'asgOauthToken'
--
-- * 'asgFields'
--
-- * 'asgAlt'
accountsSavedadstylesGet
    :: Text -- ^ 'savedAdStyleId'
    -> Text -- ^ 'accountId'
    -> AccountsSavedadstylesGet
accountsSavedadstylesGet pAsgSavedAdStyleId_ pAsgAccountId_ =
    AccountsSavedadstylesGet
    { _asgQuotaUser = Nothing
    , _asgPrettyPrint = True
    , _asgSavedAdStyleId = pAsgSavedAdStyleId_
    , _asgUserIp = Nothing
    , _asgAccountId = pAsgAccountId_
    , _asgKey = Nothing
    , _asgOauthToken = Nothing
    , _asgFields = Nothing
    , _asgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asgQuotaUser :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgQuotaUser
  = lens _asgQuotaUser (\ s a -> s{_asgQuotaUser = a})

-- | Returns response with indentations and line breaks.
asgPrettyPrint :: Lens' AccountsSavedadstylesGet' Bool
asgPrettyPrint
  = lens _asgPrettyPrint
      (\ s a -> s{_asgPrettyPrint = a})

-- | Saved ad style to retrieve.
asgSavedAdStyleId :: Lens' AccountsSavedadstylesGet' Text
asgSavedAdStyleId
  = lens _asgSavedAdStyleId
      (\ s a -> s{_asgSavedAdStyleId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asgUserIp :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgUserIp
  = lens _asgUserIp (\ s a -> s{_asgUserIp = a})

-- | Account for which to get the saved ad style.
asgAccountId :: Lens' AccountsSavedadstylesGet' Text
asgAccountId
  = lens _asgAccountId (\ s a -> s{_asgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asgKey :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgKey = lens _asgKey (\ s a -> s{_asgKey = a})

-- | OAuth 2.0 token for the current user.
asgOauthToken :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgOauthToken
  = lens _asgOauthToken
      (\ s a -> s{_asgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
asgFields :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgFields
  = lens _asgFields (\ s a -> s{_asgFields = a})

-- | Data format for the response.
asgAlt :: Lens' AccountsSavedadstylesGet' Text
asgAlt = lens _asgAlt (\ s a -> s{_asgAlt = a})

instance GoogleRequest AccountsSavedadstylesGet'
         where
        type Rs AccountsSavedadstylesGet' = SavedAdStyle
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsSavedadstylesGet{..}
          = go _asgQuotaUser _asgPrettyPrint _asgSavedAdStyleId
              _asgUserIp
              _asgAccountId
              _asgKey
              _asgOauthToken
              _asgFields
              _asgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsSavedadstylesGetAPI)
                      r
                      u
