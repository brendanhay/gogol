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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists goals to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.list@.
module Network.Google.Resource.Analytics.Management.Goals.List
    (
    -- * REST Resource
      ManagementGoalsListResource

    -- * Creating a Request
    , managementGoalsList
    , ManagementGoalsList

    -- * Request Lenses
    , mglWebPropertyId
    , mglProFileId
    , mglAccountId
    , mglStartIndex
    , mglMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.goals.list@ method which the
-- 'ManagementGoalsList' request conforms to.
type ManagementGoalsListResource =
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
                         QueryParam "start-index" Int32 :>
                           QueryParam "max-results" Int32 :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Goals

-- | Lists goals to which the user has access.
--
-- /See:/ 'managementGoalsList' smart constructor.
data ManagementGoalsList = ManagementGoalsList
    { _mglWebPropertyId :: !Text
    , _mglProFileId     :: !Text
    , _mglAccountId     :: !Text
    , _mglStartIndex    :: !(Maybe Int32)
    , _mglMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mglWebPropertyId'
--
-- * 'mglProFileId'
--
-- * 'mglAccountId'
--
-- * 'mglStartIndex'
--
-- * 'mglMaxResults'
managementGoalsList
    :: Text -- ^ 'mglWebPropertyId'
    -> Text -- ^ 'mglProFileId'
    -> Text -- ^ 'mglAccountId'
    -> ManagementGoalsList
managementGoalsList pMglWebPropertyId_ pMglProFileId_ pMglAccountId_ =
    ManagementGoalsList
    { _mglWebPropertyId = pMglWebPropertyId_
    , _mglProFileId = pMglProFileId_
    , _mglAccountId = pMglAccountId_
    , _mglStartIndex = Nothing
    , _mglMaxResults = Nothing
    }

-- | Web property ID to retrieve goals for. Can either be a specific web
-- property ID or \'~all\', which refers to all the web properties that
-- user has access to.
mglWebPropertyId :: Lens' ManagementGoalsList Text
mglWebPropertyId
  = lens _mglWebPropertyId
      (\ s a -> s{_mglWebPropertyId = a})

-- | View (Profile) ID to retrieve goals for. Can either be a specific view
-- (profile) ID or \'~all\', which refers to all the views (profiles) that
-- user has access to.
mglProFileId :: Lens' ManagementGoalsList Text
mglProFileId
  = lens _mglProFileId (\ s a -> s{_mglProFileId = a})

-- | Account ID to retrieve goals for. Can either be a specific account ID or
-- \'~all\', which refers to all the accounts that user has access to.
mglAccountId :: Lens' ManagementGoalsList Text
mglAccountId
  = lens _mglAccountId (\ s a -> s{_mglAccountId = a})

-- | An index of the first goal to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mglStartIndex :: Lens' ManagementGoalsList (Maybe Int32)
mglStartIndex
  = lens _mglStartIndex
      (\ s a -> s{_mglStartIndex = a})

-- | The maximum number of goals to include in this response.
mglMaxResults :: Lens' ManagementGoalsList (Maybe Int32)
mglMaxResults
  = lens _mglMaxResults
      (\ s a -> s{_mglMaxResults = a})

instance GoogleRequest ManagementGoalsList where
        type Rs ManagementGoalsList = Goals
        requestClient ManagementGoalsList{..}
          = go _mglAccountId _mglWebPropertyId _mglProFileId
              _mglStartIndex
              _mglMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementGoalsListResource)
                      mempty
