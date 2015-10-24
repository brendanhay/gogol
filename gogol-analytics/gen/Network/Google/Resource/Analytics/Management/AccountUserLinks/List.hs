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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists account-user links for a given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.list@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.List
    (
    -- * REST Resource
      ManagementAccountUserLinksListResource

    -- * Creating a Request
    , managementAccountUserLinksList
    , ManagementAccountUserLinksList

    -- * Request Lenses
    , maullAccountId
    , maullStartIndex
    , maullMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.accountUserLinks.list@ method which the
-- 'ManagementAccountUserLinksList' request conforms to.
type ManagementAccountUserLinksListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "entityUserLinks" :>
                 QueryParam "start-index" (Textual Int32) :>
                   QueryParam "max-results" (Textual Int32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] EntityUserLinks

-- | Lists account-user links for a given account.
--
-- /See:/ 'managementAccountUserLinksList' smart constructor.
data ManagementAccountUserLinksList = ManagementAccountUserLinksList
    { _maullAccountId  :: !Text
    , _maullStartIndex :: !(Maybe (Textual Int32))
    , _maullMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maullAccountId'
--
-- * 'maullStartIndex'
--
-- * 'maullMaxResults'
managementAccountUserLinksList
    :: Text -- ^ 'maullAccountId'
    -> ManagementAccountUserLinksList
managementAccountUserLinksList pMaullAccountId_ =
    ManagementAccountUserLinksList
    { _maullAccountId = pMaullAccountId_
    , _maullStartIndex = Nothing
    , _maullMaxResults = Nothing
    }

-- | Account ID to retrieve the user links for.
maullAccountId :: Lens' ManagementAccountUserLinksList Text
maullAccountId
  = lens _maullAccountId
      (\ s a -> s{_maullAccountId = a})

-- | An index of the first account-user link to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
maullStartIndex :: Lens' ManagementAccountUserLinksList (Maybe Int32)
maullStartIndex
  = lens _maullStartIndex
      (\ s a -> s{_maullStartIndex = a})
      . mapping _Coerce

-- | The maximum number of account-user links to include in this response.
maullMaxResults :: Lens' ManagementAccountUserLinksList (Maybe Int32)
maullMaxResults
  = lens _maullMaxResults
      (\ s a -> s{_maullMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ManagementAccountUserLinksList
         where
        type Rs ManagementAccountUserLinksList =
             EntityUserLinks
        requestClient ManagementAccountUserLinksList{..}
          = go _maullAccountId _maullStartIndex
              _maullMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementAccountUserLinksListResource)
                      mempty
