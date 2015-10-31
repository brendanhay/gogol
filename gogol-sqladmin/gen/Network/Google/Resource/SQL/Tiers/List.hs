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
-- Module      : Network.Google.Resource.SQL.Tiers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.tiers.list@.
module Network.Google.Resource.SQL.Tiers.List
    (
    -- * REST Resource
      TiersListResource

    -- * Creating a Request
    , tiersList
    , TiersList

    -- * Request Lenses
    , tlProject
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.tiers.list@ method which the
-- 'TiersList' request conforms to.
type TiersListResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "tiers" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] TiersListResponse

-- | Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
--
-- /See:/ 'tiersList' smart constructor.
newtype TiersList = TiersList
    { _tlProject :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TiersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlProject'
tiersList
    :: Text -- ^ 'tlProject'
    -> TiersList
tiersList pTlProject_ =
    TiersList
    { _tlProject = pTlProject_
    }

-- | Project ID of the project for which to list tiers.
tlProject :: Lens' TiersList Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

instance GoogleRequest TiersList where
        type Rs TiersList = TiersListResponse
        type Scopes TiersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient TiersList{..}
          = go _tlProject (Just AltJSON) sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy TiersListResource)
                      mempty
