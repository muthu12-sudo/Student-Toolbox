import Image from 'next/image';

const persons = [
  {
    name: 'Sadanand Pai',
    role: 'Frontend developer',
    avatar: 'https://avatars.githubusercontent.com/u/12962887?v=4',
    github: 'https://github.com/sadanandpai',
    linkedin: 'https://www.linkedin.com/in/sadanandpai/',
  },
  {
    name: 'Gopalakrishnan',
    role: 'Frontend developer',
    avatar: 'https://avatars.githubusercontent.com/u/22369081?v=4',
    github: 'https://github.com/gopal1996',
    linkedin: 'https://www.linkedin.com/in/gopal1996',
  },
  {
    name: 'Vivek G',
    role: 'Product designer, half developer',
    avatar: 'https://avatars.githubusercontent.com/u/26523871?v=4',
    github: 'https://github.com/yakshaG',
    linkedin: 'https://www.linkedin.com/in/vivek-g-india',
  },
  {
    name: 'Siva K',
    role: 'Frontend developer',
    avatar: 'https://avatars.githubusercontent.com/u/60533560?v=4',
    github: 'https://github.com/siva-kannan3',
    linkedin: 'https://www.linkedin.com/in/siva-kannan3/',
  },
];

const PersonCard = ({ children }: { children: React.ReactNode }) => (
  <div className="transition ease-in-out delay-100 duration-300 px-6 py-8 flex flex-col items-center text-center shadow hover:shadow-xl rounded-xl border-2 border-resume-50 hover:border-resume-100">
  
  </div>
);

const ProfileSocial = ({ github, linkedin }: { github: string; linkedin: string }) => (
  <div className="flex gap-4">
    
  </div>
);

export default function Person() {
  return (
    <>
      {persons.map((person) => (
        <PersonCard key={person.name}>
          <Image
            src={person.avatar}
            alt={person.name}
            className="rounded-full"
            height="0"
            width="0"
          />
          <p className="text-resume-800 mt-4 font-bold">{person.name}</p>
          <p className="text-resume-400 mb-6">{person.role}</p>
          <ProfileSocial github={person.github} linkedin={person.linkedin} />
        </PersonCard>
      ))}
    </>
  );
}
