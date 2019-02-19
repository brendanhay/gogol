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
-- Module      : Network.Google.Resource.Fitness.Users.DataSet.Aggregate
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataset.aggregate@.
module Network.Google.Resource.Fitness.Users.DataSet.Aggregate
    (
    -- * REST Resource
      UsersDataSetAggregateResource

    -- * Creating a Request
    , usersDataSetAggregate
    , UsersDataSetAggregate

    -- * Request Lenses
    , udsaPayload
    , udsaUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataset.aggregate@ method which the
-- 'UsersDataSetAggregate' request conforms to.
type UsersDataSetAggregateResource =
     "fitness" :>
       "v1" :>
         "users" :>
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
-- /See:/ 'usersDataSetAggregate' smart constructor.
data UsersDataSetAggregate =
  UsersDataSetAggregate'
    { _udsaPayload :: !AggregateRequest
    , _udsaUserId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSetAggregate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsaPayload'
--
-- * 'udsaUserId'
usersDataSetAggregate
    :: AggregateRequest -- ^ 'udsaPayload'
    -> Text -- ^ 'udsaUserId'
    -> UsersDataSetAggregate
usersDataSetAggregate pUdsaPayload_ pUdsaUserId_ =
  UsersDataSetAggregate'
    {_udsaPayload = pUdsaPayload_, _udsaUserId = pUdsaUserId_}


-- | Multipart request metadata.
udsaPayload :: Lens' UsersDataSetAggregate AggregateRequest
udsaPayload
  = lens _udsaPayload (\ s a -> s{_udsaPayload = a})

-- | Aggregate data for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsaUserId :: Lens' UsersDataSetAggregate Text
udsaUserId
  = lens _udsaUserId (\ s a -> s{_udsaUserId = a})

instance GoogleRequest UsersDataSetAggregate where
        type Rs UsersDataSetAggregate = AggregateResponse
        type Scopes UsersDataSetAggregate =
             '["https://www.googleapis.com/auth/fitness.activity.read",
               "https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.blood_glucose.read",
               "https://www.googleapis.com/auth/fitness.blood_glucose.write",
               "https://www.googleapis.com/auth/fitness.blood_pressure.read",
               "https://www.googleapis.com/auth/fitness.blood_pressure.write",
               "https://www.googleapis.com/auth/fitness.body.read",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.body_temperature.read",
               "https://www.googleapis.com/auth/fitness.body_temperature.write",
               "https://www.googleapis.com/auth/fitness.location.read",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.read",
               "https://www.googleapis.com/auth/fitness.nutrition.write",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
               "https://www.googleapis.com/auth/fitness.reproductive_health.read",
               "https://www.googleapis.com/auth/fitness.reproductive_health.write"]
        requestClient UsersDataSetAggregate'{..}
          = go _udsaUserId (Just AltJSON) _udsaPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSetAggregateResource)
                      mempty
