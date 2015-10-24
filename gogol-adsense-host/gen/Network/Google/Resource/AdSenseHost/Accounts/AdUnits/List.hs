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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.list@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.List
    (
    -- * REST Resource
      AccountsAdUnitsListResource

    -- * Creating a Request
    , accountsAdUnitsList
    , AccountsAdUnitsList

    -- * Request Lenses
    , aaulIncludeInactive
    , aaulAdClientId
    , aaulAccountId
    , aaulPageToken
    , aaulMaxResults
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adunits.list@ method which the
-- 'AccountsAdUnitsList' request conforms to.
type AccountsAdUnitsListResource =
     "adsensehost" :>
       "v4.1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adunits" :>
                   QueryParam "includeInactive" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AdUnits

-- | List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ 'accountsAdUnitsList' smart constructor.
data AccountsAdUnitsList = AccountsAdUnitsList
    { _aaulIncludeInactive :: !(Maybe Bool)
    , _aaulAdClientId      :: !Text
    , _aaulAccountId       :: !Text
    , _aaulPageToken       :: !(Maybe Text)
    , _aaulMaxResults      :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaulIncludeInactive'
--
-- * 'aaulAdClientId'
--
-- * 'aaulAccountId'
--
-- * 'aaulPageToken'
--
-- * 'aaulMaxResults'
accountsAdUnitsList
    :: Text -- ^ 'aaulAdClientId'
    -> Text -- ^ 'aaulAccountId'
    -> AccountsAdUnitsList
accountsAdUnitsList pAaulAdClientId_ pAaulAccountId_ =
    AccountsAdUnitsList
    { _aaulIncludeInactive = Nothing
    , _aaulAdClientId = pAaulAdClientId_
    , _aaulAccountId = pAaulAccountId_
    , _aaulPageToken = Nothing
    , _aaulMaxResults = Nothing
    }

-- | Whether to include inactive ad units. Default: true.
aaulIncludeInactive :: Lens' AccountsAdUnitsList (Maybe Bool)
aaulIncludeInactive
  = lens _aaulIncludeInactive
      (\ s a -> s{_aaulIncludeInactive = a})

-- | Ad client for which to list ad units.
aaulAdClientId :: Lens' AccountsAdUnitsList Text
aaulAdClientId
  = lens _aaulAdClientId
      (\ s a -> s{_aaulAdClientId = a})

-- | Account which contains the ad client.
aaulAccountId :: Lens' AccountsAdUnitsList Text
aaulAccountId
  = lens _aaulAccountId
      (\ s a -> s{_aaulAccountId = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aaulPageToken :: Lens' AccountsAdUnitsList (Maybe Text)
aaulPageToken
  = lens _aaulPageToken
      (\ s a -> s{_aaulPageToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aaulMaxResults :: Lens' AccountsAdUnitsList (Maybe Word32)
aaulMaxResults
  = lens _aaulMaxResults
      (\ s a -> s{_aaulMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsAdUnitsList where
        type Rs AccountsAdUnitsList = AdUnits
        requestClient AccountsAdUnitsList{..}
          = go _aaulAccountId _aaulAdClientId
              _aaulIncludeInactive
              _aaulPageToken
              _aaulMaxResults
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsListResource)
                      mempty
