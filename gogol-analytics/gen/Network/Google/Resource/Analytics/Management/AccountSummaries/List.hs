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
-- Module      : Network.Google.Resource.Analytics.Management.AccountSummaries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountSummaries.list@.
module Network.Google.Resource.Analytics.Management.AccountSummaries.List
    (
    -- * REST Resource
      ManagementAccountSummariesListResource

    -- * Creating a Request
    , managementAccountSummariesList
    , ManagementAccountSummariesList

    -- * Request Lenses
    , maslStartIndex
    , maslMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.accountSummaries.list@ method which the
-- 'ManagementAccountSummariesList' request conforms to.
type ManagementAccountSummariesListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accountSummaries" :>
             QueryParam "start-index" (Textual Int32) :>
               QueryParam "max-results" (Textual Int32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccountSummaries

-- | Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ 'managementAccountSummariesList' smart constructor.
data ManagementAccountSummariesList = ManagementAccountSummariesList'
    { _maslStartIndex :: !(Maybe (Textual Int32))
    , _maslMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountSummariesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maslStartIndex'
--
-- * 'maslMaxResults'
managementAccountSummariesList
    :: ManagementAccountSummariesList
managementAccountSummariesList =
    ManagementAccountSummariesList'
    { _maslStartIndex = Nothing
    , _maslMaxResults = Nothing
    }

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
maslStartIndex :: Lens' ManagementAccountSummariesList (Maybe Int32)
maslStartIndex
  = lens _maslStartIndex
      (\ s a -> s{_maslStartIndex = a})
      . mapping _Coerce

-- | The maximum number of account summaries to include in this response,
-- where the largest acceptable value is 1000.
maslMaxResults :: Lens' ManagementAccountSummariesList (Maybe Int32)
maslMaxResults
  = lens _maslMaxResults
      (\ s a -> s{_maslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ManagementAccountSummariesList
         where
        type Rs ManagementAccountSummariesList =
             AccountSummaries
        type Scopes ManagementAccountSummariesList =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementAccountSummariesList'{..}
          = go _maslStartIndex _maslMaxResults (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementAccountSummariesListResource)
                      mempty
