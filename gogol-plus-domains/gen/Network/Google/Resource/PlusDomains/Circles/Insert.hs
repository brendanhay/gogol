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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new circle for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesInsert@.
module Network.Google.Resource.PlusDomains.Circles.Insert
    (
    -- * REST Resource
      CirclesInsertResource

    -- * Creating a Request
    , circlesInsert'
    , CirclesInsert'

    -- * Request Lenses
    , cPayload
    , cUserId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesInsert@ method which the
-- 'CirclesInsert'' request conforms to.
type CirclesInsertResource =
     "people" :>
       Capture "userId" Text :>
         "circles" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Circle :> Post '[JSON] Circle

-- | Create a new circle for the authenticated user.
--
-- /See:/ 'circlesInsert'' smart constructor.
data CirclesInsert' = CirclesInsert'
    { _cPayload :: !Circle
    , _cUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPayload'
--
-- * 'cUserId'
circlesInsert'
    :: Circle -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> CirclesInsert'
circlesInsert' pCPayload_ pCUserId_ =
    CirclesInsert'
    { _cPayload = pCPayload_
    , _cUserId = pCUserId_
    }

-- | Multipart request metadata.
cPayload :: Lens' CirclesInsert' Circle
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | The ID of the user to create the circle on behalf of. The value \"me\"
-- can be used to indicate the authenticated user.
cUserId :: Lens' CirclesInsert' Text
cUserId = lens _cUserId (\ s a -> s{_cUserId = a})

instance GoogleRequest CirclesInsert' where
        type Rs CirclesInsert' = Circle
        requestClient CirclesInsert'{..}
          = go _cUserId (Just AltJSON) _cPayload
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CirclesInsertResource)
                      mempty
