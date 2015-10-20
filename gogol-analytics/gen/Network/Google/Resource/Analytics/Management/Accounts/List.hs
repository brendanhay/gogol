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
-- Module      : Network.Google.Resource.Analytics.Management.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all accounts to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accounts.list@.
module Network.Google.Resource.Analytics.Management.Accounts.List
    (
    -- * REST Resource
      ManagementAccountsListResource

    -- * Creating a Request
    , managementAccountsList
    , ManagementAccountsList

    -- * Request Lenses
    , malStartIndex
    , malMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.accounts.list@ method which the
-- 'ManagementAccountsList' request conforms to.
type ManagementAccountsListResource =
     "management" :>
       "accounts" :>
         QueryParam "start-index" Int32 :>
           QueryParam "max-results" Int32 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Accounts

-- | Lists all accounts to which the user has access.
--
-- /See:/ 'managementAccountsList' smart constructor.
data ManagementAccountsList = ManagementAccountsList
    { _malStartIndex :: !(Maybe Int32)
    , _malMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malStartIndex'
--
-- * 'malMaxResults'
managementAccountsList
    :: ManagementAccountsList
managementAccountsList =
    ManagementAccountsList
    { _malStartIndex = Nothing
    , _malMaxResults = Nothing
    }

-- | An index of the first account to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
malStartIndex :: Lens' ManagementAccountsList (Maybe Int32)
malStartIndex
  = lens _malStartIndex
      (\ s a -> s{_malStartIndex = a})

-- | The maximum number of accounts to include in this response.
malMaxResults :: Lens' ManagementAccountsList (Maybe Int32)
malMaxResults
  = lens _malMaxResults
      (\ s a -> s{_malMaxResults = a})

instance GoogleRequest ManagementAccountsList where
        type Rs ManagementAccountsList = Accounts
        requestClient ManagementAccountsList{..}
          = go _malStartIndex _malMaxResults (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementAccountsListResource)
                      mempty
