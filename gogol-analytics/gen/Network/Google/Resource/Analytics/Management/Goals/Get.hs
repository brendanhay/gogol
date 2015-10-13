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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a goal to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsGet@.
module Network.Google.Resource.Analytics.Management.Goals.Get
    (
    -- * REST Resource
      ManagementGoalsGetResource

    -- * Creating a Request
    , managementGoalsGet'
    , ManagementGoalsGet'

    -- * Request Lenses
    , mggWebPropertyId
    , mggGoalId
    , mggProFileId
    , mggAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsGet@ method which the
-- 'ManagementGoalsGet'' request conforms to.
type ManagementGoalsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     Capture "goalId" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Goal

-- | Gets a goal to which the user has access.
--
-- /See:/ 'managementGoalsGet'' smart constructor.
data ManagementGoalsGet' = ManagementGoalsGet'
    { _mggWebPropertyId :: !Text
    , _mggGoalId        :: !Text
    , _mggProFileId     :: !Text
    , _mggAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mggWebPropertyId'
--
-- * 'mggGoalId'
--
-- * 'mggProFileId'
--
-- * 'mggAccountId'
managementGoalsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsGet'
managementGoalsGet' pMggWebPropertyId_ pMggGoalId_ pMggProFileId_ pMggAccountId_ =
    ManagementGoalsGet'
    { _mggWebPropertyId = pMggWebPropertyId_
    , _mggGoalId = pMggGoalId_
    , _mggProFileId = pMggProFileId_
    , _mggAccountId = pMggAccountId_
    }

-- | Web property ID to retrieve the goal for.
mggWebPropertyId :: Lens' ManagementGoalsGet' Text
mggWebPropertyId
  = lens _mggWebPropertyId
      (\ s a -> s{_mggWebPropertyId = a})

-- | Goal ID to retrieve the goal for.
mggGoalId :: Lens' ManagementGoalsGet' Text
mggGoalId
  = lens _mggGoalId (\ s a -> s{_mggGoalId = a})

-- | View (Profile) ID to retrieve the goal for.
mggProFileId :: Lens' ManagementGoalsGet' Text
mggProFileId
  = lens _mggProFileId (\ s a -> s{_mggProFileId = a})

-- | Account ID to retrieve the goal for.
mggAccountId :: Lens' ManagementGoalsGet' Text
mggAccountId
  = lens _mggAccountId (\ s a -> s{_mggAccountId = a})

instance GoogleRequest ManagementGoalsGet' where
        type Rs ManagementGoalsGet' = Goal
        requestClient ManagementGoalsGet'{..}
          = go _mggAccountId _mggWebPropertyId _mggProFileId
              _mggGoalId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementGoalsGetResource)
                      mempty
