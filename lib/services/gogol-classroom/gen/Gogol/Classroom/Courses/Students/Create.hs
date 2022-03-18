{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Courses.Students.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a user as a student of a course. Domain administrators are permitted to <https://developers.google.com/classroom/guides/manage-users directly add> users within their domain as students to courses within their domain. Students are permitted to add themselves to a course using an enrollment code. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create students in this course or for access errors. * @NOT_FOUND@ if the requested course ID does not exist. * @FAILED_PRECONDITION@ if the requested user\'s account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * UserGroupsMembershipLimitReached * @ALREADY_EXISTS@ if the user is already a student or teacher in the course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.create@.
module Gogol.Classroom.Courses.Students.Create
    (
    -- * Resource
      ClassroomCoursesStudentsCreateResource

    -- ** Constructing a Request
    , newClassroomCoursesStudentsCreate
    , ClassroomCoursesStudentsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Types

-- | A resource alias for @classroom.courses.students.create@ method which the
-- 'ClassroomCoursesStudentsCreate' request conforms to.
type ClassroomCoursesStudentsCreateResource =
     "v1" Core.:>
       "courses" Core.:>
         Core.Capture "courseId" Core.Text Core.:>
           "students" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "enrollmentCode" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Student Core.:>
                             Core.Post '[Core.JSON] Student

-- | Adds a user as a student of a course. Domain administrators are permitted to <https://developers.google.com/classroom/guides/manage-users directly add> users within their domain as students to courses within their domain. Students are permitted to add themselves to a course using an enrollment code. This method returns the following error codes: * @PERMISSION_DENIED@ if the requesting user is not permitted to create students in this course or for access errors. * @NOT_FOUND@ if the requested course ID does not exist. * @FAILED_PRECONDITION@ if the requested user\'s account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * UserGroupsMembershipLimitReached * @ALREADY_EXISTS@ if the user is already a student or teacher in the course.
--
-- /See:/ 'newClassroomCoursesStudentsCreate' smart constructor.
data ClassroomCoursesStudentsCreate = ClassroomCoursesStudentsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier of the course to create the student in. This identifier can be either the Classroom-assigned identifier or an alias.
    , courseId :: Core.Text
      -- | Enrollment code of the course to create the student in. This code is required if userId corresponds to the requesting user; it may be omitted if the requesting user has administrative permissions to create students for any user.
    , enrollmentCode :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Student
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassroomCoursesStudentsCreate' with the minimum fields required to make a request.
newClassroomCoursesStudentsCreate 
    ::  Core.Text
       -- ^  Identifier of the course to create the student in. This identifier can be either the Classroom-assigned identifier or an alias. See 'courseId'.
    -> Student
       -- ^  Multipart request metadata. See 'payload'.
    -> ClassroomCoursesStudentsCreate
newClassroomCoursesStudentsCreate courseId payload =
  ClassroomCoursesStudentsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , courseId = courseId
    , enrollmentCode = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClassroomCoursesStudentsCreate
         where
        type Rs ClassroomCoursesStudentsCreate = Student
        type Scopes ClassroomCoursesStudentsCreate =
             '["https://www.googleapis.com/auth/classroom.profile.emails",
               "https://www.googleapis.com/auth/classroom.profile.photos",
               "https://www.googleapis.com/auth/classroom.rosters"]
        requestClient ClassroomCoursesStudentsCreate{..}
          = go courseId xgafv accessToken callback
              enrollmentCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              classroomService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ClassroomCoursesStudentsCreateResource)
                      Core.mempty

