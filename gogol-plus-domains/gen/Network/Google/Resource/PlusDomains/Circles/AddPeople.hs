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
-- Module      : Network.Google.Resource.PlusDomains.Circles.AddPeople
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a person to a circle. Google+ limits certain circle operations,
-- including the number of circle adds. Learn More.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.addPeople@.
module Network.Google.Resource.PlusDomains.Circles.AddPeople
    (
    -- * REST Resource
      CirclesAddPeopleResource

    -- * Creating a Request
    , circlesAddPeople
    , CirclesAddPeople

    -- * Request Lenses
    , capEmail
    , capUserId
    , capCircleId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.circles.addPeople@ method which the
-- 'CirclesAddPeople' request conforms to.
type CirclesAddPeopleResource =
     "plusDomains" :>
       "v1" :>
         "circles" :>
           Capture "circleId" Text :>
             "people" :>
               QueryParams "email" Text :>
                 QueryParams "userId" Text :>
                   QueryParam "alt" AltJSON :> Put '[JSON] Circle

-- | Add a person to a circle. Google+ limits certain circle operations,
-- including the number of circle adds. Learn More.
--
-- /See:/ 'circlesAddPeople' smart constructor.
data CirclesAddPeople = CirclesAddPeople
    { _capEmail    :: !(Maybe [Text])
    , _capUserId   :: !(Maybe [Text])
    , _capCircleId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesAddPeople' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capEmail'
--
-- * 'capUserId'
--
-- * 'capCircleId'
circlesAddPeople
    :: Text -- ^ 'capCircleId'
    -> CirclesAddPeople
circlesAddPeople pCapCircleId_ =
    CirclesAddPeople
    { _capEmail = Nothing
    , _capUserId = Nothing
    , _capCircleId = pCapCircleId_
    }

-- | Email of the people to add to the circle. Optional, can be repeated.
capEmail :: Lens' CirclesAddPeople [Text]
capEmail
  = lens _capEmail (\ s a -> s{_capEmail = a}) .
      _Default
      . _Coerce

-- | IDs of the people to add to the circle. Optional, can be repeated.
capUserId :: Lens' CirclesAddPeople [Text]
capUserId
  = lens _capUserId (\ s a -> s{_capUserId = a}) .
      _Default
      . _Coerce

-- | The ID of the circle to add the person to.
capCircleId :: Lens' CirclesAddPeople Text
capCircleId
  = lens _capCircleId (\ s a -> s{_capCircleId = a})

instance GoogleRequest CirclesAddPeople where
        type Rs CirclesAddPeople = Circle
        requestClient CirclesAddPeople{..}
          = go _capCircleId (_capEmail ^. _Default)
              (_capUserId ^. _Default)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient
                      (Proxy :: Proxy CirclesAddPeopleResource)
                      mempty
