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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.buildings.insert@.
module Network.Google.Resource.Directory.Resources.Buildings.Insert
    (
    -- * REST Resource
      ResourcesBuildingsInsertResource

    -- * Creating a Request
    , resourcesBuildingsInsert
    , ResourcesBuildingsInsert

    -- * Request Lenses
    , rbiPayload
    , rbiCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.insert@ method which the
-- 'ResourcesBuildingsInsert' request conforms to.
type ResourcesBuildingsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Building :> Post '[JSON] Building

-- | Inserts a building.
--
-- /See:/ 'resourcesBuildingsInsert' smart constructor.
data ResourcesBuildingsInsert = ResourcesBuildingsInsert'
    { _rbiPayload  :: !Building
    , _rbiCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesBuildingsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbiPayload'
--
-- * 'rbiCustomer'
resourcesBuildingsInsert
    :: Building -- ^ 'rbiPayload'
    -> Text -- ^ 'rbiCustomer'
    -> ResourcesBuildingsInsert
resourcesBuildingsInsert pRbiPayload_ pRbiCustomer_ =
    ResourcesBuildingsInsert'
    { _rbiPayload = pRbiPayload_
    , _rbiCustomer = pRbiCustomer_
    }

-- | Multipart request metadata.
rbiPayload :: Lens' ResourcesBuildingsInsert Building
rbiPayload
  = lens _rbiPayload (\ s a -> s{_rbiPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rbiCustomer :: Lens' ResourcesBuildingsInsert Text
rbiCustomer
  = lens _rbiCustomer (\ s a -> s{_rbiCustomer = a})

instance GoogleRequest ResourcesBuildingsInsert where
        type Rs ResourcesBuildingsInsert = Building
        type Scopes ResourcesBuildingsInsert =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsInsert'{..}
          = go _rbiCustomer (Just AltJSON) _rbiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsInsertResource)
                      mempty
