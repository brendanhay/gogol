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
-- Module      : Network.Google.Resource.GAN.Publishers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only advertisers can look up
-- publishers. Publishers can request information about themselves by
-- omitting the publisherId query parameter.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.publishers.get@.
module Network.Google.Resource.GAN.Publishers.Get
    (
    -- * REST Resource
      PublishersGetResource

    -- * Creating a Request
    , publishersGet
    , PublishersGet

    -- * Request Lenses
    , pgRoleId
    , pgRole
    , pgPublisherId
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.publishers.get@ method which the
-- 'PublishersGet' request conforms to.
type PublishersGetResource =
     "gan" :>
       "v1beta1" :>
         Capture "role" PublishersGetRole :>
           Capture "roleId" Text :>
             "publisher" :>
               QueryParam "publisherId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Publisher

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only advertisers can look up
-- publishers. Publishers can request information about themselves by
-- omitting the publisherId query parameter.
--
-- /See:/ 'publishersGet' smart constructor.
data PublishersGet = PublishersGet
    { _pgRoleId      :: !Text
    , _pgRole        :: !PublishersGetRole
    , _pgPublisherId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgRoleId'
--
-- * 'pgRole'
--
-- * 'pgPublisherId'
publishersGet
    :: Text -- ^ 'pgRoleId'
    -> PublishersGetRole -- ^ 'pgRole'
    -> PublishersGet
publishersGet pPgRoleId_ pPgRole_ =
    PublishersGet
    { _pgRoleId = pPgRoleId_
    , _pgRole = pPgRole_
    , _pgPublisherId = Nothing
    }

-- | The ID of the requesting advertiser or publisher.
pgRoleId :: Lens' PublishersGet Text
pgRoleId = lens _pgRoleId (\ s a -> s{_pgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
pgRole :: Lens' PublishersGet PublishersGetRole
pgRole = lens _pgRole (\ s a -> s{_pgRole = a})

-- | The ID of the publisher to look up. Optional.
pgPublisherId :: Lens' PublishersGet (Maybe Text)
pgPublisherId
  = lens _pgPublisherId
      (\ s a -> s{_pgPublisherId = a})

instance GoogleRequest PublishersGet where
        type Rs PublishersGet = Publisher
        requestClient PublishersGet{..}
          = go _pgRole _pgRoleId _pgPublisherId (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy PublishersGetResource)
                      mempty
