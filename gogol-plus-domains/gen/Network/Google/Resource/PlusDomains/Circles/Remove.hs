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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Remove
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesRemove@.
module Network.Google.Resource.PlusDomains.Circles.Remove
    (
    -- * REST Resource
      CirclesRemoveResource

    -- * Creating a Request
    , circlesRemove'
    , CirclesRemove'

    -- * Request Lenses
    , crCircleId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesRemove@ method which the
-- 'CirclesRemove'' request conforms to.
type CirclesRemoveResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a circle.
--
-- /See:/ 'circlesRemove'' smart constructor.
newtype CirclesRemove' = CirclesRemove'
    { _crCircleId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesRemove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCircleId'
circlesRemove'
    :: Text -- ^ 'circleId'
    -> CirclesRemove'
circlesRemove' pCrCircleId_ =
    CirclesRemove'
    { _crCircleId = pCrCircleId_
    }

-- | The ID of the circle to delete.
crCircleId :: Lens' CirclesRemove' Text
crCircleId
  = lens _crCircleId (\ s a -> s{_crCircleId = a})

instance GoogleRequest CirclesRemove' where
        type Rs CirclesRemove' = ()
        requestClient CirclesRemove'{..}
          = go _crCircleId (Just AltJSON) plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CirclesRemoveResource)
                      mempty
