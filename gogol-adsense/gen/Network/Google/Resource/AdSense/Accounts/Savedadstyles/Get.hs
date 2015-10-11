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
module Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get
    (
    -- * REST Resource
      AccountsSavedadstylesGetResource

    -- * Creating a Request
    , accountsSavedadstylesGet'
    , AccountsSavedadstylesGet'

    -- * Request Lenses
    , asgQuotaUser
    , asgPrettyPrint
    , asgSavedAdStyleId
    , asgUserIP
    , asgAccountId
    , asgKey
    , asgOAuthToken
    , asgFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsSavedadstylesGet@ method which the
-- 'AccountsSavedadstylesGet'' request conforms to.
type AccountsSavedadstylesGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "savedadstyles" :>
           Capture "savedAdStyleId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyle

-- | List a specific saved ad style for the specified account.
--
-- /See:/ 'accountsSavedadstylesGet'' smart constructor.
data AccountsSavedadstylesGet' = AccountsSavedadstylesGet'
    { _asgQuotaUser      :: !(Maybe Text)
    , _asgPrettyPrint    :: !Bool
    , _asgSavedAdStyleId :: !Text
    , _asgUserIP         :: !(Maybe Text)
    , _asgAccountId      :: !Text
    , _asgKey            :: !(Maybe AuthKey)
    , _asgOAuthToken     :: !(Maybe OAuthToken)
    , _asgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'asgUserIP'
--
-- * 'asgAccountId'
--
-- * 'asgKey'
--
-- * 'asgOAuthToken'
--
-- * 'asgFields'
accountsSavedadstylesGet'
    :: Text -- ^ 'savedAdStyleId'
    -> Text -- ^ 'accountId'
    -> AccountsSavedadstylesGet'
accountsSavedadstylesGet' pAsgSavedAdStyleId_ pAsgAccountId_ =
    AccountsSavedadstylesGet'
    { _asgQuotaUser = Nothing
    , _asgPrettyPrint = True
    , _asgSavedAdStyleId = pAsgSavedAdStyleId_
    , _asgUserIP = Nothing
    , _asgAccountId = pAsgAccountId_
    , _asgKey = Nothing
    , _asgOAuthToken = Nothing
    , _asgFields = Nothing
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
asgUserIP :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgUserIP
  = lens _asgUserIP (\ s a -> s{_asgUserIP = a})

-- | Account for which to get the saved ad style.
asgAccountId :: Lens' AccountsSavedadstylesGet' Text
asgAccountId
  = lens _asgAccountId (\ s a -> s{_asgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asgKey :: Lens' AccountsSavedadstylesGet' (Maybe AuthKey)
asgKey = lens _asgKey (\ s a -> s{_asgKey = a})

-- | OAuth 2.0 token for the current user.
asgOAuthToken :: Lens' AccountsSavedadstylesGet' (Maybe OAuthToken)
asgOAuthToken
  = lens _asgOAuthToken
      (\ s a -> s{_asgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asgFields :: Lens' AccountsSavedadstylesGet' (Maybe Text)
asgFields
  = lens _asgFields (\ s a -> s{_asgFields = a})

instance GoogleAuth AccountsSavedadstylesGet' where
        _AuthKey = asgKey . _Just
        _AuthToken = asgOAuthToken . _Just

instance GoogleRequest AccountsSavedadstylesGet'
         where
        type Rs AccountsSavedadstylesGet' = SavedAdStyle
        request = requestWith adSenseRequest
        requestWith rq AccountsSavedadstylesGet'{..}
          = go _asgAccountId _asgSavedAdStyleId _asgQuotaUser
              (Just _asgPrettyPrint)
              _asgUserIP
              _asgFields
              _asgKey
              _asgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsSavedadstylesGetResource)
                      rq
