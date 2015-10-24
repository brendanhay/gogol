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
-- Module      : Network.Google.Resource.Coordinate.CustomFieldDef.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of custom field definitions for a team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.customFieldDef.list@.
module Network.Google.Resource.Coordinate.CustomFieldDef.List
    (
    -- * REST Resource
      CustomFieldDefListResource

    -- * Creating a Request
    , customFieldDefList
    , CustomFieldDefList

    -- * Request Lenses
    , cfdlTeamId
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.customFieldDef.list@ method which the
-- 'CustomFieldDefList' request conforms to.
type CustomFieldDefListResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "custom_fields" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] CustomFieldDefListResponse

-- | Retrieves a list of custom field definitions for a team.
--
-- /See:/ 'customFieldDefList' smart constructor.
newtype CustomFieldDefList = CustomFieldDefList
    { _cfdlTeamId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomFieldDefList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdlTeamId'
customFieldDefList
    :: Text -- ^ 'cfdlTeamId'
    -> CustomFieldDefList
customFieldDefList pCfdlTeamId_ =
    CustomFieldDefList
    { _cfdlTeamId = pCfdlTeamId_
    }

-- | Team ID
cfdlTeamId :: Lens' CustomFieldDefList Text
cfdlTeamId
  = lens _cfdlTeamId (\ s a -> s{_cfdlTeamId = a})

instance GoogleRequest CustomFieldDefList where
        type Rs CustomFieldDefList =
             CustomFieldDefListResponse
        requestClient CustomFieldDefList{..}
          = go _cfdlTeamId (Just AltJSON) mapsCoordinateService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomFieldDefListResource)
                      mempty
