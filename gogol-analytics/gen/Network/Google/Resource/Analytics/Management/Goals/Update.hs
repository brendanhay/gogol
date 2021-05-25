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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing goal.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.update@.
module Network.Google.Resource.Analytics.Management.Goals.Update
    (
    -- * REST Resource
      ManagementGoalsUpdateResource

    -- * Creating a Request
    , managementGoalsUpdate
    , ManagementGoalsUpdate

    -- * Request Lenses
    , mguWebPropertyId
    , mguGoalId
    , mguProFileId
    , mguPayload
    , mguAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.goals.update@ method which the
-- 'ManagementGoalsUpdate' request conforms to.
type ManagementGoalsUpdateResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       "goals" :>
                         Capture "goalId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Goal :> Put '[JSON] Goal

-- | Updates an existing goal.
--
-- /See:/ 'managementGoalsUpdate' smart constructor.
data ManagementGoalsUpdate =
  ManagementGoalsUpdate'
    { _mguWebPropertyId :: !Text
    , _mguGoalId :: !Text
    , _mguProFileId :: !Text
    , _mguPayload :: !Goal
    , _mguAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementGoalsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mguWebPropertyId'
--
-- * 'mguGoalId'
--
-- * 'mguProFileId'
--
-- * 'mguPayload'
--
-- * 'mguAccountId'
managementGoalsUpdate
    :: Text -- ^ 'mguWebPropertyId'
    -> Text -- ^ 'mguGoalId'
    -> Text -- ^ 'mguProFileId'
    -> Goal -- ^ 'mguPayload'
    -> Text -- ^ 'mguAccountId'
    -> ManagementGoalsUpdate
managementGoalsUpdate pMguWebPropertyId_ pMguGoalId_ pMguProFileId_ pMguPayload_ pMguAccountId_ =
  ManagementGoalsUpdate'
    { _mguWebPropertyId = pMguWebPropertyId_
    , _mguGoalId = pMguGoalId_
    , _mguProFileId = pMguProFileId_
    , _mguPayload = pMguPayload_
    , _mguAccountId = pMguAccountId_
    }


-- | Web property ID to update the goal.
mguWebPropertyId :: Lens' ManagementGoalsUpdate Text
mguWebPropertyId
  = lens _mguWebPropertyId
      (\ s a -> s{_mguWebPropertyId = a})

-- | Index of the goal to be updated.
mguGoalId :: Lens' ManagementGoalsUpdate Text
mguGoalId
  = lens _mguGoalId (\ s a -> s{_mguGoalId = a})

-- | View (Profile) ID to update the goal.
mguProFileId :: Lens' ManagementGoalsUpdate Text
mguProFileId
  = lens _mguProFileId (\ s a -> s{_mguProFileId = a})

-- | Multipart request metadata.
mguPayload :: Lens' ManagementGoalsUpdate Goal
mguPayload
  = lens _mguPayload (\ s a -> s{_mguPayload = a})

-- | Account ID to update the goal.
mguAccountId :: Lens' ManagementGoalsUpdate Text
mguAccountId
  = lens _mguAccountId (\ s a -> s{_mguAccountId = a})

instance GoogleRequest ManagementGoalsUpdate where
        type Rs ManagementGoalsUpdate = Goal
        type Scopes ManagementGoalsUpdate =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementGoalsUpdate'{..}
          = go _mguAccountId _mguWebPropertyId _mguProFileId
              _mguGoalId
              (Just AltJSON)
              _mguPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementGoalsUpdateResource)
                      mempty
