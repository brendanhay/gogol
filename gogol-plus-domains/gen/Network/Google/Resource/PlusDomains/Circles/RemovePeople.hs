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
-- Module      : Network.Google.Resource.PlusDomains.Circles.RemovePeople
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a person from a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.removePeople@.
module Network.Google.Resource.PlusDomains.Circles.RemovePeople
    (
    -- * REST Resource
      CirclesRemovePeopleResource

    -- * Creating a Request
    , circlesRemovePeople
    , CirclesRemovePeople

    -- * Request Lenses
    , crpEmail
    , crpUserId
    , crpCircleId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.circles.removePeople@ method which the
-- 'CirclesRemovePeople' request conforms to.
type CirclesRemovePeopleResource =
     "plusDomains" :>
       "v1" :>
         "circles" :>
           Capture "circleId" Text :>
             "people" :>
               QueryParams "email" Text :>
                 QueryParams "userId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove a person from a circle.
--
-- /See:/ 'circlesRemovePeople' smart constructor.
data CirclesRemovePeople = CirclesRemovePeople
    { _crpEmail    :: !(Maybe [Text])
    , _crpUserId   :: !(Maybe [Text])
    , _crpCircleId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesRemovePeople' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crpEmail'
--
-- * 'crpUserId'
--
-- * 'crpCircleId'
circlesRemovePeople
    :: Text -- ^ 'crpCircleId'
    -> CirclesRemovePeople
circlesRemovePeople pCrpCircleId_ =
    CirclesRemovePeople
    { _crpEmail = Nothing
    , _crpUserId = Nothing
    , _crpCircleId = pCrpCircleId_
    }

-- | Email of the people to add to the circle. Optional, can be repeated.
crpEmail :: Lens' CirclesRemovePeople [Text]
crpEmail
  = lens _crpEmail (\ s a -> s{_crpEmail = a}) .
      _Default
      . _Coerce

-- | IDs of the people to remove from the circle. Optional, can be repeated.
crpUserId :: Lens' CirclesRemovePeople [Text]
crpUserId
  = lens _crpUserId (\ s a -> s{_crpUserId = a}) .
      _Default
      . _Coerce

-- | The ID of the circle to remove the person from.
crpCircleId :: Lens' CirclesRemovePeople Text
crpCircleId
  = lens _crpCircleId (\ s a -> s{_crpCircleId = a})

instance GoogleRequest CirclesRemovePeople where
        type Rs CirclesRemovePeople = ()
        requestClient CirclesRemovePeople{..}
          = go _crpCircleId (_crpEmail ^. _Default)
              (_crpUserId ^. _Default)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient
                      (Proxy :: Proxy CirclesRemovePeopleResource)
                      mempty
