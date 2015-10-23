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
-- Module      : Network.Google.Resource.GAN.Advertisers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only publishers can lookup
-- advertisers. Advertisers can request information about themselves by
-- omitting the advertiserId query parameter.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.advertisers.get@.
module Network.Google.Resource.GAN.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetResource

    -- * Creating a Request
    , advertisersGet
    , AdvertisersGet

    -- * Request Lenses
    , agAdvertiserId
    , agRoleId
    , agRole
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.advertisers.get@ method which the
-- 'AdvertisersGet' request conforms to.
type AdvertisersGetResource =
     "gan" :>
       "v1beta1" :>
         Capture "role" AdvertisersGetRole :>
           Capture "roleId" Text :>
             "advertiser" :>
               QueryParam "advertiserId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Advertiser

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only publishers can lookup
-- advertisers. Advertisers can request information about themselves by
-- omitting the advertiserId query parameter.
--
-- /See:/ 'advertisersGet' smart constructor.
data AdvertisersGet = AdvertisersGet
    { _agAdvertiserId :: !(Maybe Text)
    , _agRoleId       :: !Text
    , _agRole         :: !AdvertisersGetRole
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agAdvertiserId'
--
-- * 'agRoleId'
--
-- * 'agRole'
advertisersGet
    :: Text -- ^ 'agRoleId'
    -> AdvertisersGetRole -- ^ 'agRole'
    -> AdvertisersGet
advertisersGet pAgRoleId_ pAgRole_ =
    AdvertisersGet
    { _agAdvertiserId = Nothing
    , _agRoleId = pAgRoleId_
    , _agRole = pAgRole_
    }

-- | The ID of the advertiser to look up. Optional.
agAdvertiserId :: Lens' AdvertisersGet (Maybe Text)
agAdvertiserId
  = lens _agAdvertiserId
      (\ s a -> s{_agAdvertiserId = a})

-- | The ID of the requesting advertiser or publisher.
agRoleId :: Lens' AdvertisersGet Text
agRoleId = lens _agRoleId (\ s a -> s{_agRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
agRole :: Lens' AdvertisersGet AdvertisersGetRole
agRole = lens _agRole (\ s a -> s{_agRole = a})

instance GoogleRequest AdvertisersGet where
        type Rs AdvertisersGet = Advertiser
        requestClient AdvertisersGet{..}
          = go _agRole _agRoleId _agAdvertiserId (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy AdvertisersGetResource)
                      mempty
