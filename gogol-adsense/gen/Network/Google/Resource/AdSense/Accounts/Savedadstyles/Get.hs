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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List a specific saved ad style for the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.savedadstyles.get@.
module Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get
    (
    -- * REST Resource
      AccountsSavedadstylesGetResource

    -- * Creating a Request
    , accountsSavedadstylesGet
    , AccountsSavedadstylesGet

    -- * Request Lenses
    , asgSavedAdStyleId
    , asgAccountId
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.savedadstyles.get@ method which the
-- 'AccountsSavedadstylesGet' request conforms to.
type AccountsSavedadstylesGetResource =
     "adsense" :>
       "v1.4" :>
         "accounts" :>
           Capture "accountId" Text :>
             "savedadstyles" :>
               Capture "savedAdStyleId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyle

-- | List a specific saved ad style for the specified account.
--
-- /See:/ 'accountsSavedadstylesGet' smart constructor.
data AccountsSavedadstylesGet =
  AccountsSavedadstylesGet'
    { _asgSavedAdStyleId :: !Text
    , _asgAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsSavedadstylesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgSavedAdStyleId'
--
-- * 'asgAccountId'
accountsSavedadstylesGet
    :: Text -- ^ 'asgSavedAdStyleId'
    -> Text -- ^ 'asgAccountId'
    -> AccountsSavedadstylesGet
accountsSavedadstylesGet pAsgSavedAdStyleId_ pAsgAccountId_ =
  AccountsSavedadstylesGet'
    {_asgSavedAdStyleId = pAsgSavedAdStyleId_, _asgAccountId = pAsgAccountId_}


-- | Saved ad style to retrieve.
asgSavedAdStyleId :: Lens' AccountsSavedadstylesGet Text
asgSavedAdStyleId
  = lens _asgSavedAdStyleId
      (\ s a -> s{_asgSavedAdStyleId = a})

-- | Account for which to get the saved ad style.
asgAccountId :: Lens' AccountsSavedadstylesGet Text
asgAccountId
  = lens _asgAccountId (\ s a -> s{_asgAccountId = a})

instance GoogleRequest AccountsSavedadstylesGet where
        type Rs AccountsSavedadstylesGet = SavedAdStyle
        type Scopes AccountsSavedadstylesGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsSavedadstylesGet'{..}
          = go _asgAccountId _asgSavedAdStyleId (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsSavedadstylesGetResource)
                      mempty
