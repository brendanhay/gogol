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
-- Module      : Network.Google.Resource.DFAReporting.Orders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one order by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.orders.get@.
module Network.Google.Resource.DFAReporting.Orders.Get
    (
    -- * REST Resource
      OrdersGetResource

    -- * Creating a Request
    , ordersGet
    , OrdersGet

    -- * Request Lenses
    , ogProFileId
    , ogId
    , ogProjectId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.orders.get@ method which the
-- 'OrdersGet' request conforms to.
type OrdersGetResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "projects" :>
               Capture "projectId" Int64 :>
                 "orders" :>
                   Capture "id" Int64 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Order

-- | Gets one order by ID.
--
-- /See:/ 'ordersGet' smart constructor.
data OrdersGet = OrdersGet
    { _ogProFileId :: !Int64
    , _ogId        :: !Int64
    , _ogProjectId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogProFileId'
--
-- * 'ogId'
--
-- * 'ogProjectId'
ordersGet
    :: Int64 -- ^ 'ogProFileId'
    -> Int64 -- ^ 'ogId'
    -> Int64 -- ^ 'ogProjectId'
    -> OrdersGet
ordersGet pOgProFileId_ pOgId_ pOgProjectId_ =
    OrdersGet
    { _ogProFileId = pOgProFileId_
    , _ogId = pOgId_
    , _ogProjectId = pOgProjectId_
    }

-- | User profile ID associated with this request.
ogProFileId :: Lens' OrdersGet Int64
ogProFileId
  = lens _ogProFileId (\ s a -> s{_ogProFileId = a})

-- | Order ID.
ogId :: Lens' OrdersGet Int64
ogId = lens _ogId (\ s a -> s{_ogId = a})

-- | Project ID for orders.
ogProjectId :: Lens' OrdersGet Int64
ogProjectId
  = lens _ogProjectId (\ s a -> s{_ogProjectId = a})

instance GoogleRequest OrdersGet where
        type Rs OrdersGet = Order
        requestClient OrdersGet{..}
          = go _ogProFileId _ogProjectId _ogId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy OrdersGetResource)
                      mempty
