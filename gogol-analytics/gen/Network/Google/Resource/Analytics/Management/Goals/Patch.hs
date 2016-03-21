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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing goal. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.patch@.
module Network.Google.Resource.Analytics.Management.Goals.Patch
    (
    -- * REST Resource
      ManagementGoalsPatchResource

    -- * Creating a Request
    , managementGoalsPatch
    , ManagementGoalsPatch

    -- * Request Lenses
    , mgpWebPropertyId
    , mgpGoalId
    , mgpProFileId
    , mgpPayload
    , mgpAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.goals.patch@ method which the
-- 'ManagementGoalsPatch' request conforms to.
type ManagementGoalsPatchResource =
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
                             ReqBody '[JSON] Goal :> Patch '[JSON] Goal

-- | Updates an existing goal. This method supports patch semantics.
--
-- /See:/ 'managementGoalsPatch' smart constructor.
data ManagementGoalsPatch = ManagementGoalsPatch'
    { _mgpWebPropertyId :: !Text
    , _mgpGoalId        :: !Text
    , _mgpProFileId     :: !Text
    , _mgpPayload       :: !Goal
    , _mgpAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgpWebPropertyId'
--
-- * 'mgpGoalId'
--
-- * 'mgpProFileId'
--
-- * 'mgpPayload'
--
-- * 'mgpAccountId'
managementGoalsPatch
    :: Text -- ^ 'mgpWebPropertyId'
    -> Text -- ^ 'mgpGoalId'
    -> Text -- ^ 'mgpProFileId'
    -> Goal -- ^ 'mgpPayload'
    -> Text -- ^ 'mgpAccountId'
    -> ManagementGoalsPatch
managementGoalsPatch pMgpWebPropertyId_ pMgpGoalId_ pMgpProFileId_ pMgpPayload_ pMgpAccountId_ =
    ManagementGoalsPatch'
    { _mgpWebPropertyId = pMgpWebPropertyId_
    , _mgpGoalId = pMgpGoalId_
    , _mgpProFileId = pMgpProFileId_
    , _mgpPayload = pMgpPayload_
    , _mgpAccountId = pMgpAccountId_
    }

-- | Web property ID to update the goal.
mgpWebPropertyId :: Lens' ManagementGoalsPatch Text
mgpWebPropertyId
  = lens _mgpWebPropertyId
      (\ s a -> s{_mgpWebPropertyId = a})

-- | Index of the goal to be updated.
mgpGoalId :: Lens' ManagementGoalsPatch Text
mgpGoalId
  = lens _mgpGoalId (\ s a -> s{_mgpGoalId = a})

-- | View (Profile) ID to update the goal.
mgpProFileId :: Lens' ManagementGoalsPatch Text
mgpProFileId
  = lens _mgpProFileId (\ s a -> s{_mgpProFileId = a})

-- | Multipart request metadata.
mgpPayload :: Lens' ManagementGoalsPatch Goal
mgpPayload
  = lens _mgpPayload (\ s a -> s{_mgpPayload = a})

-- | Account ID to update the goal.
mgpAccountId :: Lens' ManagementGoalsPatch Text
mgpAccountId
  = lens _mgpAccountId (\ s a -> s{_mgpAccountId = a})

instance GoogleRequest ManagementGoalsPatch where
        type Rs ManagementGoalsPatch = Goal
        type Scopes ManagementGoalsPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementGoalsPatch'{..}
          = go _mgpAccountId _mgpWebPropertyId _mgpProFileId
              _mgpGoalId
              (Just AltJSON)
              _mgpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementGoalsPatchResource)
                      mempty
