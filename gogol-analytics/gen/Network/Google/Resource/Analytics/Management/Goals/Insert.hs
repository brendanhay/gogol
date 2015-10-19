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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new goal.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsInsert@.
module Network.Google.Resource.Analytics.Management.Goals.Insert
    (
    -- * REST Resource
      ManagementGoalsInsertResource

    -- * Creating a Request
    , managementGoalsInsert'
    , ManagementGoalsInsert'

    -- * Request Lenses
    , mgiWebPropertyId
    , mgiProFileId
    , mgiPayload
    , mgiAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsInsert@ method which the
-- 'ManagementGoalsInsert'' request conforms to.
type ManagementGoalsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Goal :> Post '[JSON] Goal

-- | Create a new goal.
--
-- /See:/ 'managementGoalsInsert'' smart constructor.
data ManagementGoalsInsert' = ManagementGoalsInsert'
    { _mgiWebPropertyId :: !Text
    , _mgiProFileId     :: !Text
    , _mgiPayload       :: !Goal
    , _mgiAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgiWebPropertyId'
--
-- * 'mgiProFileId'
--
-- * 'mgiPayload'
--
-- * 'mgiAccountId'
managementGoalsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Goal -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsInsert'
managementGoalsInsert' pMgiWebPropertyId_ pMgiProFileId_ pMgiPayload_ pMgiAccountId_ =
    ManagementGoalsInsert'
    { _mgiWebPropertyId = pMgiWebPropertyId_
    , _mgiProFileId = pMgiProFileId_
    , _mgiPayload = pMgiPayload_
    , _mgiAccountId = pMgiAccountId_
    }

-- | Web property ID to create the goal for.
mgiWebPropertyId :: Lens' ManagementGoalsInsert' Text
mgiWebPropertyId
  = lens _mgiWebPropertyId
      (\ s a -> s{_mgiWebPropertyId = a})

-- | View (Profile) ID to create the goal for.
mgiProFileId :: Lens' ManagementGoalsInsert' Text
mgiProFileId
  = lens _mgiProFileId (\ s a -> s{_mgiProFileId = a})

-- | Multipart request metadata.
mgiPayload :: Lens' ManagementGoalsInsert' Goal
mgiPayload
  = lens _mgiPayload (\ s a -> s{_mgiPayload = a})

-- | Account ID to create the goal for.
mgiAccountId :: Lens' ManagementGoalsInsert' Text
mgiAccountId
  = lens _mgiAccountId (\ s a -> s{_mgiAccountId = a})

instance GoogleRequest ManagementGoalsInsert' where
        type Rs ManagementGoalsInsert' = Goal
        requestClient ManagementGoalsInsert'{..}
          = go _mgiAccountId _mgiWebPropertyId _mgiProFileId
              (Just AltJSON)
              _mgiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementGoalsInsertResource)
                      mempty
