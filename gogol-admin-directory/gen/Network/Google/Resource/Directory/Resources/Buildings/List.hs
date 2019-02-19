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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of buildings for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.buildings.list@.
module Network.Google.Resource.Directory.Resources.Buildings.List
    (
    -- * REST Resource
      ResourcesBuildingsListResource

    -- * Creating a Request
    , resourcesBuildingsList
    , ResourcesBuildingsList

    -- * Request Lenses
    , rblCustomer
    , rblPageToken
    , rblMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.list@ method which the
-- 'ResourcesBuildingsList' request conforms to.
type ResourcesBuildingsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Buildings

-- | Retrieves a list of buildings for an account.
--
-- /See:/ 'resourcesBuildingsList' smart constructor.
data ResourcesBuildingsList =
  ResourcesBuildingsList'
    { _rblCustomer   :: !Text
    , _rblPageToken  :: !(Maybe Text)
    , _rblMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesBuildingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rblCustomer'
--
-- * 'rblPageToken'
--
-- * 'rblMaxResults'
resourcesBuildingsList
    :: Text -- ^ 'rblCustomer'
    -> ResourcesBuildingsList
resourcesBuildingsList pRblCustomer_ =
  ResourcesBuildingsList'
    { _rblCustomer = pRblCustomer_
    , _rblPageToken = Nothing
    , _rblMaxResults = Nothing
    }

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rblCustomer :: Lens' ResourcesBuildingsList Text
rblCustomer
  = lens _rblCustomer (\ s a -> s{_rblCustomer = a})

-- | Token to specify the next page in the list.
rblPageToken :: Lens' ResourcesBuildingsList (Maybe Text)
rblPageToken
  = lens _rblPageToken (\ s a -> s{_rblPageToken = a})

-- | Maximum number of results to return.
rblMaxResults :: Lens' ResourcesBuildingsList (Maybe Int32)
rblMaxResults
  = lens _rblMaxResults
      (\ s a -> s{_rblMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ResourcesBuildingsList where
        type Rs ResourcesBuildingsList = Buildings
        type Scopes ResourcesBuildingsList =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesBuildingsList'{..}
          = go _rblCustomer _rblPageToken _rblMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsListResource)
                      mempty
