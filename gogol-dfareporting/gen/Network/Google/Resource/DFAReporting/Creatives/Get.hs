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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.get@.
module Network.Google.Resource.DFAReporting.Creatives.Get
    (
    -- * REST Resource
      CreativesGetResource

    -- * Creating a Request
    , creativesGet
    , CreativesGet

    -- * Request Lenses
    , ccProFileId
    , ccId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.get@ method which the
-- 'CreativesGet' request conforms to.
type CreativesGetResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "creatives" :>
               Capture "id" Int64 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Creative

-- | Gets one creative by ID.
--
-- /See:/ 'creativesGet' smart constructor.
data CreativesGet = CreativesGet
    { _ccProFileId :: !Int64
    , _ccId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccProFileId'
--
-- * 'ccId'
creativesGet
    :: Int64 -- ^ 'ccProFileId'
    -> Int64 -- ^ 'ccId'
    -> CreativesGet
creativesGet pCcProFileId_ pCcId_ =
    CreativesGet
    { _ccProFileId = pCcProFileId_
    , _ccId = pCcId_
    }

-- | User profile ID associated with this request.
ccProFileId :: Lens' CreativesGet Int64
ccProFileId
  = lens _ccProFileId (\ s a -> s{_ccProFileId = a})

-- | Creative ID.
ccId :: Lens' CreativesGet Int64
ccId = lens _ccId (\ s a -> s{_ccId = a})

instance GoogleRequest CreativesGet where
        type Rs CreativesGet = Creative
        requestClient CreativesGet{..}
          = go _ccProFileId _ccId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CreativesGetResource)
                      mempty
