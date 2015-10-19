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
-- Module      : Network.Google.Resource.Fitness.Users.Dataset.Aggregate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Aggregates data of a certain type or stream into buckets divided by a
-- given type of boundary. Multiple data sets of multiple types and from
-- multiple sources can be aggreated into exactly one bucket type per
-- request.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDatasetAggregate@.
module Network.Google.Resource.Fitness.Users.Dataset.Aggregate
    (
    -- * REST Resource
      UsersDatasetAggregateResource

    -- * Creating a Request
    , usersDatasetAggregate'
    , UsersDatasetAggregate'

    -- * Request Lenses
    , udaPayload
    , udaUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDatasetAggregate@ method which the
-- 'UsersDatasetAggregate'' request conforms to.
type UsersDatasetAggregateResource =
     Capture "userId" Text :>
       "dataset:aggregate" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AggregateRequest :>
             Post '[JSON] AggregateResponse

-- | Aggregates data of a certain type or stream into buckets divided by a
-- given type of boundary. Multiple data sets of multiple types and from
-- multiple sources can be aggreated into exactly one bucket type per
-- request.
--
-- /See:/ 'usersDatasetAggregate'' smart constructor.
data UsersDatasetAggregate' = UsersDatasetAggregate'
    { _udaPayload :: !AggregateRequest
    , _udaUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDatasetAggregate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udaPayload'
--
-- * 'udaUserId'
usersDatasetAggregate'
    :: AggregateRequest -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> UsersDatasetAggregate'
usersDatasetAggregate' pUdaPayload_ pUdaUserId_ =
    UsersDatasetAggregate'
    { _udaPayload = pUdaPayload_
    , _udaUserId = pUdaUserId_
    }

-- | Multipart request metadata.
udaPayload :: Lens' UsersDatasetAggregate' AggregateRequest
udaPayload
  = lens _udaPayload (\ s a -> s{_udaPayload = a})

-- | Aggregate data for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udaUserId :: Lens' UsersDatasetAggregate' Text
udaUserId
  = lens _udaUserId (\ s a -> s{_udaUserId = a})

instance GoogleRequest UsersDatasetAggregate' where
        type Rs UsersDatasetAggregate' = AggregateResponse
        requestClient UsersDatasetAggregate'{..}
          = go _udaUserId (Just AltJSON) _udaPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDatasetAggregateResource)
                      mempty
